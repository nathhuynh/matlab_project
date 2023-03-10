% Construct a database of the periodic table 
% a vector for each different field: symbolic name, atomic number, weight
% Provide a lookup to return all information of an element for a specific
% input criterion (such as the symbolic name)

% periodic_table_database displays element information in
% annotated textboxes overlaying an image and in a cell array in the 
% command window

% periodic_table_fix text file is loaded in the four main functions 
% individually, hence does not need to be loaded in here

% periodic_table contains 118 rows and 4 columns under headings:
% ------------------------------------------------------------
% Column no.    #1           #2      #3            #4
% Heading:      elementName, symbol, atomicNumber, atomicWeight
% ------------------------------------------------------------

% to run this program properly, the user must specify which of the four
% input criterions will be used to search the database

% ask user to specify input criterion they will use to search the database
inputType = input("Please select one of the following: Name, Symbol, Number or Weight\n", "s");


% the switch statement tests each case until a case expression is true
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
        % an error message is displayed if the inputType does not match any
        % of the cases above
        error Input_type_unrecognised
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% COMMAND WINDOW OUTPUT

% convert element name and symbol from char to cell values
element_name_cell = cellstr(element_name);
element_symbol_cell = cellstr(element_symbol);

% convert element number and weight from double to str values
element_number_str = num2str(element_number);
element_weight_str = num2str(element_weight);

% combine element information into an array element_info
element_info = [element_name_cell, element_symbol_cell, element_number_str, element_weight_str];

% print element contained in each cell of element_info
% the following two lines of code was sourced from 
% https://au.mathworks.com/matlabcentral/answers/321613-fprintf-cell-array#answer_251679
fprintf(1, '%s ', element_info{:})
fprintf(1, '\n') % new line

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% IMAGE WINDOW OUPUT

% using function imageSelect, select and display the corresponding image
% that matches the element information given to the user
% all images taken from https://elements.wlonk.com/

% each element image contains a drawing of its main human usage or natural
% occurence

% imageSelect uses element_name which is determined by one of the four main
% functions (depending on inputType)
imageSelect(element_name);

% all information of the element will be displayed in text box annotations
% that overlay the image selected by imageSelect. The four annotated
% headings are as follows:
% ------------------------------
% NAME, SYMBOL, NUMBER, WEIGHT
% ------------------------------

% each piece of information has its own textbox
% x and y elements of dimension are for spacing purposes
% w and h elements are all .1 (each textbox has a width and height of .1)

% ------------------------------------------------------------------------
% NAME textbox
annotation('textbox', [.05 .075 .1 .1],'String', "NAME: " + element_name);

% SYMBOL textbox
annotation('textbox', [.05 0 .1 .1],'String', "SYMBOL: " + element_symbol);

% NUMBER textbox
annotation('textbox', [.5 .075 .1 .1],'String', "NUMBER: " + element_number);

% WEIGHT textbox
annotation('textbox', [.5 0 .1 .1],'String', "WEIGHT: " + element_weight)