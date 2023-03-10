function [] = element_databaseV7() 
% Construct a database of the periodic table 
% a vector for each different field: symbolic name, atomic number, weight
% Provide a lookup to return all information of an element for a specific
% input criterion (such as the symbolic name)

% Version 7 of element_database improves the speed of the program by
% removing unneccesary global variables and files to load in.
% This version also removes the need for the element's information to be
% converted into cells as the information is displayed in annotation boxes.
% + Added an image guide in a separate window to help user understand
% symbols in the element images

% periodic_table_fix text file is loaded in the four main functions
% individually, hence does not need to be loaded in here

% periodic_table contains 118 rows and 4 columns under headings:
% ------------------------------------------------------------
% Column no.    #1           #2      #3            #4
% Heading:      elementName, symbol, atomicNumber, atomicWeight
% ------------------------------------------------------------


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
        % an error message is displayed if the inputType does not match any
        % of the cases above
        error Input_type_unrecognised
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% using function imageSelect, select and display the corresponding image
% that matches the element information given to the user
% all images taken from https://elements.wlonk.com/

% imageSelect uses element_name which is determined by one of the four main
% functions (depending on inputType)
imageSelect(element_name);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
annotation('textbox', [.5 0 .1 .1],'String', "WEIGHT: " + element_weight);
% ------------------------------------------------------------------------


% reads in image containing guide to symbols on the image displayed by
% imageSelect
% guide image will be displayed in a separate view window
image_guide = imread("element_info_guide.png");
figure, imshow(image_guide(:,:,:,1))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end % end of element_database
