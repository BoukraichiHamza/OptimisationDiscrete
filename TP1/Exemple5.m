
% Exemple 5 
u=[4 2 3 7 6 2 1 5];
v=[2 3 1 2 1 5 4 2];
V=7;


%=====================================
% Methodes Exo1: solutions realisables 
% Donc bornes inferieures
%=====================================
% GLOUTON                     : x=[1 1 1 0 1 0 0 0]; z=15
% Heuristique u decroissant   : x=[1 0 0 1 1 0 0 1]; z=22
% Heuristique v decroissant   : x=[1 0 0 0 0 1 0 0]; z=6
% Heuristique v croissant     : x=[1 0 1 1 1 0 0 0]; z=20
% Heuristique u/v decroissant : x=[0 0 1 1 1 0 0 1]; z=21


%=====================================
% Exo 2: Solutions exactes cas relache
% Borne superieure
%=====================================
% Exact cas relache           : x=[0.5 0 1 1 1 0 0 1]; z=23

%=====================================
% Solution Exacte
%=====================================
% Exact                       : x=[1 0 0 1 1 0 0 1]; z=22
% Nb Its                      : 4

%=====================================
% Solution Exacte avec amelioration
%=====================================
% Exact + amelioration        : x=[1 0 0 1 1 0 0 1]; z=22
% Nb Its                      : 4
