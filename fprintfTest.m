clc
clear

% Construct a database of the periodic table 
% a vector for each different field: symbolic name, atomic number, weight
% Provide a lookup to return all information of an element for a specific
% input criterion (such as the symbolic name)

% import periodic_table text file
filename = 'periodic_table_fix.txt';
T = readtable(filename);


% using the in-built MATLAB function, table2array:
% convert data columns into cell arrays for element name and symbol
elementName_array = table2array(T(:,1));
symbol_array = table2array(T(:,2));
% table arrays for atomic number and atomic weight
atomicNumber_array = T(:,3);
atomicWeight_array = T(:,4);

% testing the fprintf function with the cell and table arrays
% expected output: Hydrogen - H - 1 - 1.007
fprintf(1, '%s - %s - %d - %0.3f\n', elementName_array{1}, ...
    symbol_array{1}, atomicNumber_array{1,:}, atomicWeight_array{1,:})



% Subscripting into a table using one subscript (as in t(i)) is not supported. 
% Specify a row subscript and a variable
% subscript, as in t(rows,vars). To select variables, use t(:,i) or for one
% variable t.(i). To select rows, use t(i,:).


