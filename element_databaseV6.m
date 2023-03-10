function element_info = element_databaseV6() 
% Construct a database of the periodic table 
% a vector for each different field: symbolic name, atomic number, weight
% Provide a lookup to return all information of an element for a specific
% input criterion (such as the symbolic name)

% Version 6 of element_database adds the functionality of displaying an
% image of the selected element along with the element's info in cells
% This version also removes unncessary code seen in previous versions

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

% four main functions are used within this script, depending on
% which input type the user specifies when the program is started.
% the four functions are the following: 
% ------------------------------------------------------------
% fromElementNameV4, fromElementSymbolV2, fromNumberV2, fromWeightV2
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

% convert element name and symbol from char to cell values
element_name_cell = cellstr(element_name);
element_symbol_cell = cellstr(element_symbol);

% convert element number and weight from double to cell values
element_number_cell = num2cell(element_number);
element_weight_cell = num2cell(element_weight);

% combine element information into an array element_info
element_info = [element_name_cell, element_symbol_cell, element_number_cell, element_weight_cell];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% using function imageSelect, select and display the corresponding image
% that matches the element information given to the user
imageSelect(element_name);

end % end of element_database