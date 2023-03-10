clc
clear

% Construct a database of the periodic table 
% a vector for each different field: symbolic name, atomic number, weight
% Provide a lookup to return all information of an element for a specific
% input criterion (such as the symbolic name)

% import periodic_table text file
filename = 'periodic_table_fix.txt';
T = readtable(filename);

global elementName_array symbol_array atomicNumber_array atomicWeight_array 
% using the in-built MATLAB function, table2array:
% convert data columns into cell arrays for element name and symbol
elementName_array = table2array(T(:,1));
symbol_array = table2array(T(:,2));
% table arrays for atomic number and atomic weight
atomicNumber_array = T(:,3);
atomicWeight_array = T(:,4);

elementName = input("Enter element name: ", "s");
element_info = fromElementName(elementName);

