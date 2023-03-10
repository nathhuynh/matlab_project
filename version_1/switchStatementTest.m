% ask user to specify input criterion they will use to search the database
inputType = input("Please select one of the following: Name, Symbol, Number or Weight\n", "s");

switch inputType
    case {"Name", "name"}
        %[element_name, element_symbol, element_number, element_weight] = fromElementNameV2(elementName);
        disp("1")
    case {"Symbol", "symbol"}
        %[element_name, element_symbol, element_number, element_weight] = fromElementSymbol(elementSymbol);
        disp("2")
    case {"Number", "number"}
        %[element_name, element_symbol, element_number, element_weight] = fromNumber(elementNumber);
        disp("3")
    case {"Weight", "weight"}
        %[element_name, element_symbol, element_number, element_weight] = fromWeight(elementWeight);
        disp("4")
    otherwise
        fprintf("Input type unrecognised\n");
end
