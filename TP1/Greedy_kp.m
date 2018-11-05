%% Résolution du problèmes du sac à dos
%% Paramètres :
% u : utilité de chaque objet
% v : volume de chaque objet
% V : Volume totale du KP
% s : Variante utilisés

function [x,z] = Greedy_kp(u,v,V,s)

%% Initialisation
W = 0;
n = size(u,2);
x = zeros(n,1);

%
switch s
    case 1
        ue = u;
        ve = v;
        ind = 1:n;
    case 2
        [ve,ind] = sort(v,2,'descend');
        ue = u(ind);
    case 3
        [ve,ind] = sort(v,2,'ascend');
        ue = u(ind);
    case 4
        [ue,ind] = sort(u,2,'descend');
        ve = v(ind);
    case 5
        c = u./v;
        [~,ind] = sort(c,2,'descend');
        ue = u(ind);
        ve = v(ind);
    otherwise
        error("Variante indisponible")
end


for i=1:n
    j = ind(i);
    W = ve(i) + W;
    
    if (W <= V)
        x(j) = 1;
    else
        W = W - ve(i);
    end
end
z = u*x;