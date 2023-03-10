function [element_name, element_symbol, element_number, element_weight] = fromNumberV2(elementNumber)
% fromNumberV2 takes an element number as a parameter and returns all
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
    for i = 1:size(atomicNumber_array)
        % if current element number in array is equal to user input,
        % the current element's information will be stored
        if atomicNumber_array{i,:} == elementNumber
            element_name = elementName_array{i,:};
            element_symbol = symbol_array{i,:};
            element_number = atomicNumber_array{i,:};
            element_weight = atomicWeight_array{i,:};
            % change elementFound to true
            elementFound = true;
        
        end
    end
    % if user inputs a name that does not match an element number, a message
    % is printed
    if elementFound == false
        fprintf("Element could not be found with number: %d\n", elementNumber);
    end
end
end
