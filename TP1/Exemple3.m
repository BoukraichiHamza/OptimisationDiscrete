
% Exemple 3
u=[3 2 1 3];
v=[1 2 2 4];
V=6;

%=====================================
% Methodes Exo1: solutions realisables 
% Donc bornes inferieures
%=====================================
% GLOUTON                     : x=[1 1 1 0]; z=6
% Heuristique u decroissant   : x=[1 0 0 1]; z=6
% Heuristique v decroissant   : x=[0 1 0 1]; z=5
% Heuristique v croissant     : x=[1 1 1 0]; z=6
% Heuristique u/v decroissant : x=[1 1 1 0]; z=6


%=====================================
% Exo 2: Solutions exactes cas relache
% Borne superieure
%=====================================
% Exact cas relache           : x=[1 1 0 0.75]; z=7.25

%=====================================
% Solution Exacte
%=====================================
% Exact                       : x=[1 1 1 0]; z=6
% Nb Its                      : 5

%=====================================
% Solution Exacte avec amelioration
%=====================================
% Exact + amelioration        : x=[1 1 1 0]; z=6
% Nb Its                      : 3
   