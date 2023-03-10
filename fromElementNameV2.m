function [element_name, element_symbol, element_number, element_weight] = fromElementNameV2(elementName)
% fromElementNameV2 takes an element name as a parameter and returns all
% information of the element (name, symbol, atomic number, atomic weight)

% import periodic_table text file
filename = 'periodic_table_fix.txt';
periodic_table = readtable(filename);

% using the in-built MATLAB function, table2array:
% convert data columns into cell arrays for element name and symbol
% table arrays for atomic number and atomic weight
elementName_array = table2array(periodic_table(:,1));
symbol_array = table2array(periodic_table(:,2));
atomicNumber_array = periodic_table(:,3);
atomicWeight_array = periodic_table(:,4);
elementFound = false;

% if elementFound is equal to false, the for loop will execute
if elementFound == false
    for i = 1:size(elementName_array)
        % strcmpi compares current iteration of array with user input
        % if current element name in array is equal to user input, element
        % information will be stored
        % comparison is NOT case sensitive
        if strcmpi(elementName_array(i), elementName)
            element_name = elementName_array{i,:};
            element_symbol = symbol_array{i,:};
            element_number = atomicNumber_array{i,:};
            element_weight = atomicWeight_array{i,:};
            % change elementFound to true
            elementFound = true;
        
        end
    end
    % if user inputs a name that does not match an element name, a message
    % is printed
    if elementFound == false
        fprintf("Element could not be found with name: %s\n", elementName);
    end
end
end