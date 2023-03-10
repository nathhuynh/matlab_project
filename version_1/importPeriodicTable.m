clc
clear

% Construct a database of the periodic table 
% a vector for each different field: symbolic name, atomic number, weight
% Provide a lookup to return all information of an element for a specific
% input criterion (such as the symbolic name)

% import periodic_table text file
filename = 'periodic_table_fix.txt';
% display file contents as a table
T = readtable(filename);
disp(T)


