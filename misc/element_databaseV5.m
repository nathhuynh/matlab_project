function element_info = element_databaseV5() 
% Construct a database of the periodic table 
% a vector for each different field: symbolic name, atomic number, weight
% Provide a lookup to return all information of an element for a specific
% input criterion (such as the symbolic name)

% Version 5 of element_database adds the functionality of displaying an
% image of the periodic table along with the selected element's info
% in cells

% declare periodic_table as global, allowing all local functions within the
% script access to the data from periodic_table_fix.txt
global periodic_table

% import periodic_table_fix text file and create table using readtable
% periodic_table contains 118 rows and 4 columns under headings:
% ------------------------------------------------------------
% Column no.    #1           #2      #3            #4
% Heading:      elementName, symbol, atomicNumber, atomicWeight
% ------------------------------------------------------------
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
inputType = input("Please select one of the following: Name, Symbol, Number or Weight\n", "s");

% switch statement tests each case until case expression is true
% a case is true if the user's input matches one the following:
% ------------------------------------------------------------
% "Name", "name", "NAME"
% "Symbol", "symbol", "SYMBOL"
% "Number", "number", "NUMBER"
% "Weight", "weight", "WEIGHT"
% ------------------------------------------------------------
switch inputType
    case {"Name", "name", "NAME"}
        user_input = input("Please enter an element name: ","s");
        [element_name, element_symbol, element_number, element_weight] = fromElementNameV4(user_input);
    case {"Symbol", "symbol", "SYMBOL"}
        user_input = input("Please enter an element symbol: ","s");
        [element_name, element_symbol, element_number, element_weight] = fromElementSymbolV2(user_input);
    case {"Number", "number", "NUMBER"}
        user_input = input("Please enter an element number: ");
        [element_name, element_symbol, element_number, element_weight] = fromNumberV2(user_input);
    case {"Weight", "weight", "WEIGHT"}
        user_input = input("Please enter an element weight: ");
        [element_name, element_symbol, element_number, element_weight] = fromWeightV2(user_input);
    otherwise
        fprintf("Input type unrecognised\n");
        error Input_type_unrecognised
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   All local functions are below
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [element_name, element_symbol, element_number, element_weight] = fromElementNameV4(elementName)
% fromElementNameV4 takes an element name as a parameter and returns all
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
% fromElementSymbolV2 takes an element symbol as a parameter and returns all
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
    % if user inputs a name that does not match an element symbol, a message
    % is printed
    if elementFound == false
        fprintf("Element could not be found with symbol: %s\n", elementSymbol);
    end
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [element_name, element_symbol, element_number, element_weight] = fromNumberV2(elementNumber)
% fromNumberV2 takes an element number as a parameter and returns all
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
% fromWeightV2 takes an element weight as a parameter and returns all
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% read in and display image of periodic table
periodic_table_image = imread("periodic_table_image.jpg");
imshow(periodic_table_image);

end % end of element_database
