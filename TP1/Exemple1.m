
% Exemple 1
u=[12 6 7];
v=[3 2 2];
V=4;

%=====================================
% Methodes Exo1: solutions realisables
% Donc bornes inferieures
%=====================================
% GLOUTON                     : x=[1 0 0]; z=12
% Heuristique u decroissant   : x=[1 0 0]; z=12
% Heuristique v decroissant   : x=[1 0 0]; z=12
% Heuristique v croissant     : x=[0 1 1]; z=13
% Heuristique u/v decroissant : x=[1 0 0]; z=12

[x,z] = Greedy_kp(u,v,V,1);
[x,z] = Greedy_kp(u,v,V,2);
[x,z] = Greedy_kp(u,v,V,3);
[x,z] = Greedy_kp(u,v,V,4);
[x,z] = Greedy_kp(u,v,V,5);

%=====================================
% Exo 2: Solutions exactes cas relache
% Borne superieure
%=====================================
% Exact cas relache           : x=[1 0 0.5]; z=15.5
[x,z] = Greedy_kpr(u,v,V)
%=====================================
% Solution Exacte
%=====================================
% Exact                       : x=[0 1 1]; z=13
% Nb Its                      : 1

%=====================================
% Solution Exacte avec amelioration
%=====================================
% Exact + amelioration        : x=[0 1 1]; z=13
% Nb Its                      : 1
