function element_info = element_databaseV2(inputType, input) 
% Construct a database of the periodic table 
% a vector for each different field: symbolic name, atomic number, weight
% Provide a lookup to return all information of an element for a specific
% input criterion (such as the symbolic name)

% declare periodic_table as global, allowing all local functions within the
% script access to the data from periodic_table_fix.txt
global periodic_table

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

% ask user to specify input criterion they will use to search the database
%inputType = input("Please select one of the following: Name, Symbol, Number or Weight\n", "s");
%if strcmpi(inputType, "Name")
    %elementName = input("Please enter name of element: \n", "s");
%end

% explain
switch inputType
    case {"Name", "name"}
        [element_name, element_symbol, element_number, element_weight] = fromElementNameV4(input);
    case {"Symbol", "symbol"}
        [element_name, element_symbol, element_number, element_weight] = fromElementSymbolV2(input);
    case {"Number", "number"}
        [element_name, element_symbol, element_number, element_weight] = fromNumberV2(input);
    case {"Weight", "weight"}
        [element_name, element_symbol, element_number, element_weight] = fromWeightV2(input);
    otherwise
        fprintf("Input type unrecognised\n");
        error Input_type_unrecognised
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% All local functions are below
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [element_name, element_symbol, element_number, element_weight] = fromElementNameV4(elementName)
% fromElementNameV2 takes an element name as a parameter and returns all
% information of the element (name, symbol, atomic number, atomic weight)

elementFound = false;


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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [element_name, element_symbol, element_number, element_weight] = fromElementSymbolV2(elementSymbol)
% fromElementSymbol takes an element symbol as a parameter and returns all
% information of the element (name, symbol, atomic number, atomic weight)
elementFound = false;


if elementFound == false
    for i = 1:size(symbol_array)
        % strcmpi compares current iteration of array with user input
        % if current element symbol in array is equal to user input, element
        % information will be stored
        % comparison is NOT case sensitive
        if strcmpi(symbol_array(i), elementSymbol)
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [element_name, element_symbol, element_number, element_weight] = fromNumberV2(elementNumber)
% fromElementSymbol takes an element symbol as a parameter and returns all
% information of the element (name, symbol, atomic number, atomic weight)

elementFound = false;


if elementFound == false
    for i = 1:size(atomicNumber_array)
        % strcmpi compares current iteration of array with user input
        % if current element symbol in array is equal to user input, element
        % information will be stored
        % comparison is NOT case sensitive
        if atomicNumber_array{i,:} == elementNumber
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
        fprintf("Element could not be found with number: %d\n", elementNumber);
    end
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [element_name, element_symbol, element_number, element_weight] = fromWeightV2(elementWeight)
% fromElementSymbol takes an element symbol as a parameter and returns all
% information of the element (name, symbol, atomic number, atomic weight)

elementFound = false;


if elementFound == false
    for i = 1:size(atomicWeight_array)
        % strcmpi compares current iteration of array with user input
        % if current element symbol in array is equal to user input, element
        % information will be stored
        % comparison is NOT case sensitive
        if atomicWeight_array{i,:} == elementWeight
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
        fprintf("Element could not be found with weight: %d\n", elementWeight);
    end
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% convert element name and symbol from char to cell values
element_name_cell = cellstr(element_name);
element_symbol_cell = cellstr(element_symbol);

% convert element number and weight from double to cell values
element_number_cell = num2cell(element_number);
element_weight_cell = num2cell(element_weight);

% combine element information into an array element_info
element_info = [element_name_cell, element_symbol_cell, element_number_cell, element_weight_cell];

end % end of element_database
