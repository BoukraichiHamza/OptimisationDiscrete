
% Exemple 2 
u=[6 3 4 7 4];
v=[2 2 1 2 1];
V=5;

%=====================================
% Methodes Exo1: solutions realisables 
% Donc bornes inferieures
%=====================================
% GLOUTON                     : x=[1 1 1 0 0]; z=13
% Heuristique u decroissant   : x=[1 0 1 1 0]; z=17
% Heuristique v decroissant   : x=[1 1 1 0 0]; z=14
% Heuristique v croissant     : x=[1 0 1 0 1]; z=13
% Heuristique u/v decroissant : x=[1 1 1 0 0]; z=15


%=====================================
% Exo 2: Solutions exactes cas relache
% Borne superieure
%=====================================
% Exact cas relache           : x=[0.5 0 1 1 1]; z=18

%=====================================
% Solution Exacte
%=====================================
% Exact                       : x=[1 0 0 1 1]; z=17
% Nb Its                      : 3

%=====================================
% Solution Exacte avec amelioration
%=====================================
% Exact + amelioration        : x=[1 0 0 1 1]; z=17
% Nb Its                      : 3
