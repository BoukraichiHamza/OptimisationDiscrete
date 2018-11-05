
% Exemple 4
u=[3 2 1 3];
v=[1 1 1 2];
V=2;

%=====================================
% Methodes Exo1: solutions realisables 
% Donc bornes inferieures
%=====================================
% GLOUTON                     : x=[1 1 0 0]; z=5
% Heuristique u decroissant   : x=[1 1 0 0]; z=5
% Heuristique v decroissant   : x=[0 0 0 1]; z=3
% Heuristique v croissant     : x=[1 1 0 0]; z=5
% Heuristique u/v decroissant : x=[1 1 0 0]; z=5


%=====================================
% Exo 2: Solutions exactes cas relache
% Borne superieure
%=====================================
% Exact cas relache           : x=[1 1 0 0]; z=5

%=====================================
% Solution Exacte
%=====================================
% Exact                       : x=[1 1 0 0]; z=5
% Nb Its                      : 1

%=====================================
% Solution Exacte avec amelioration
%=====================================
% Exact + amelioration        : x=[1 1 0 0]; z=5
% Nb Its                      : 1
