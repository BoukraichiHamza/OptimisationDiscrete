% Algorithme exact de Branch and Bound pour la resolution 
% du PSAD en 0-1
function [xs,zs,NB_ITS,tps]=BB(u,v,V)

    % Initialisations
    n=length(u);
    x(1:n)=2; % 0 ou 1 ou 2 quand c'est indetermine
    
    % Calculs des premieres bornes sup et inf
    %++++++++++++++++++++++++++++++++++++++++
    %++++++++++++++++++++++++++++++++++++++++
    [xsup,bsup]=METHODE_PSAD_RELACHE(u,v,V);
    %++++++++++++++++++++++++++++++++++++++++
    %++++++++++++++++++++++++++++++++++++++++
   
    %----------------------------------------------
    %----------------------------------------------
    [xc,zc]=METHODE_HEURISTIQUE_PSAD(u,v,V);  % Solution courante xc et zc
    %----------------------------------------------
    %----------------------------------------------
    
    % Initialisation de la liste
    L=[x bsup];
    
    NB_ITS=0;
    ti=cputime;
    while size(L,1)~=0 %Liste vide ?
        NB_ITS=NB_ITS+1;
        
        
        % Extraction de l'element de L
        % qui a la plus grande borne sup
        [m,p]=max(L(:,n+1));
        xans=x;
        x=L(p,1:n);
        L=[L(1:p-1,:);L(p+1:size(L,1),:)];
        
        % Affichage de resultats intermediaires
        if mod(NB_ITS,100)==0
            fprintf('===================================\n');
            fprintf('Iteration %d, longueur liste L = %d\n',NB_ITS,size(L,1));
            fprintf('Borne inf = %f\n',zc);
            fprintf('Borne sup = %f\n',m);
            fprintf('===================================\n');
        end

        % Recherche de l'indice nu a decouper
        for nu=1:n
            if x(nu)==2
                break
            end
        end

        % Decomposition en 2 sous problemes
        for val=0:1,
            xv=x;
            xv(nu)=val;
        
            % Etude de v1
            R=V-sum(v(:,xv==1)); % Reste du sac
            if R>0
                % calcul de la borne sup
                Kz=sum(u(:,xv==1));
                u2=u(:,xv==2);v2=v(:,xv==2);% u et v restant a considerer
                if length(u2)~=0
                    %+++++++++++++++++++++++++++++++++++++++++++++++
                    %+++++++++++++++++++++++++++++++++++++++++++++++
                    [xsup,bsup] = METHODE_PSAD_RELACHE(u2,v2,R);
                    %+++++++++++++++++++++++++++++++++++++++++++++++
                    %+++++++++++++++++++++++++++++++++++++++++++++++
                else
                    bsup=0;
                end
                bsup=bsup+Kz;
                if (bsup>zc) 
                    % Calcul d'une solution realisable
                    if length(u2)~=0
                        %----------------------------------------------
                        %----------------------------------------------
                        [xr,zr]=METHODE_HEURISTIQUE_PSAD(u2,v2,R);
                        %----------------------------------------------
                        %----------------------------------------------
                    else
                        zr=0;
                    end
                    % Fabrication de la solution pour le probleme general
                    zr=zr+Kz;
                    xres=xv;
                    xres(xv==2)=xr; 
                    
                    % Changement du maximum
                    if zc<zr
                        %fprintf('Le maximum change : %f\n',zr);
                        zc=zr;
                        xc=xres;
                        % Elimination des elements de la liste ne contenant
                        % pas la solution
                        LL=[];
                        for i=1:size(L,1),
                            if L(i,n+1)>zc
                                LL=[LL;L(i,:)];
                            end
                        end
                        L=LL;
                    end

                    if any(xr==1) % cad il y a une solution possible
                        % Insertion en fin de liste
                        L = [L;[xv,bsup]];
                    end
                    
                end
            end
        end
    end
    tf=cputime;
        
    % Solution
    xs=xc;
    zs=zc;
    % Affichage
    fprintf('Nombre d iterations : %d\n',NB_ITS);
    fprintf('Temps CPU en (s)    : %f\n',tf-ti);
    tps=tf-ti;
   