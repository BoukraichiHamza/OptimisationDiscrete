%% Résolution du problèmes du sac à dos relaché
%% Paramètres :
% u : utilité de chaque objet
% v : volume de chaque objet
% V : Volume totale du KP

function [x,z] = Greedy_kp(u,v,V)

%% Initialisation
W = 0;
n = size(u,2);
x = zeros(n,1);

%% Tri des ratio
c = u./v;
[~,ind] = sort(c,2,'descend');
ue = u(ind);
ve = v(ind);


%% Calcul de la solution
for i=1:n
    j = ind(i);
    
    if (W + ve(i) <= V)
        x(j) = 1;
        W = ve(i) + W;
    else
        x(j) = (V-W)/ve(i);
        W = V;
    end
end
z = u*x;