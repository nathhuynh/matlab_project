function [element_name, element_symbol, element_number, element_weight] = fromWeight(elementWeight)
% fromWeight takes an element weight as a parameter and returns all
% information of the element (name, symbol, atomic number, atomic weight)


% declare periodic_table as global, allowing all local functions within the
% script access to the data from periodic_table_fix.txt
global periodic_table

% using the in-built MATLAB function, table2array:
% convert data columns into cell arrays for element name and symbol
% table arrays for atomic number and atomic weight
elementName_array = table2array(periodic_table(:,1));
symbol_array = table2array(periodic_table(:,2));
atomicNumber_array = periodic_table(:,3);
atomicWeight_array = periodic_table(:,4);
elementFound = false;


if elementFound == false
    for i = 1:size(atomicWeight_array)
        
        % if current element weight in array is equal to user input, element
        % information will be stored
        
        if atomicWeight_array{i,:} == elementWeight
            element_name = elementName_array{i,:};
            element_symbol = symbol_array{i,:};
            element_number = atomicNumber_array{i,:};
            element_weight = atomicWeight_array{i,:};
            % change elementFound to true
            elementFound = true;
        
        end
    end
    % if user inputs a name that does not match an element weight, a message
    % is printed
    if elementFound == false
        fprintf("Element could not be found with weight: %d\n", elementWeight);
    end
end
end
