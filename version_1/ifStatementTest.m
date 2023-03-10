clc
clear

% Construct a database of the periodic table 
% a vector for each different field: symbolic name, atomic number, weight
% Provide a lookup to return all information of an element for a specific
% input criterion (such as the symbolic name)


% import periodic_table text file
filename = 'periodic_table_fix.txt';
periodic_table = readtable(filename);


% using the in-built MATLAB function, table2array:
% convert data columns into cell arrays for element name and symbol
elementName_array = table2array(periodic_table(:,1));
symbol_array = table2array(periodic_table(:,2));
% table arrays for atomic number and atomic weight
atomicNumber_array = periodic_table(:,3);
atomicWeight_array = periodic_table(:,4);

% testing the fprintf function with the cell and table arrays
% print output: Hydrogen - H - 1 - 1.007
fprintf(1, '%s - %s - %d - %0.3f\n', elementName_array{1,:}, ...
    symbol_array{1,:}, atomicNumber_array{1,:}, atomicWeight_array{1,:})

% testing whether the current code works with if statements and user
% input
elementFound = false;
if elementFound == false
    % user input element name
    elementName = input("Please enter the name of the element: ", "s");
    for i = 1:size(elementName_array)
        % strcmpi compares current iteration of array with user input
        % if current element name in array is equal to user input, the
        % element name, symbol, atomic number and atomic weight will be
        % printed
        % comparison is NOT case sensitive
        if strcmpi(elementName_array(i), elementName)
            fprintf(1, '%s - %s - %d - %0.3f\n', elementName_array{i}, ...
    symbol_array{i}, atomicNumber_array{i,:}, atomicWeight_array{i,:})
            elementFound = true;
        end
    end
    % if user inputs a name that does not match an element name, a message
    % is printed
    if elementFound == false
        fprintf("Element could not be found with name: %s\n", elementName);
    end
end

