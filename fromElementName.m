function element_info = fromElementName(elementName)
% fromElementName takes an element name as a parameter and returns the name
% of the element if found in array of elements

% import periodic_table text file
filename = 'periodic_table_fix.txt';
periodic_table = readtable(filename);

elementName_array = table2array(periodic_table(:,1));
elementFound = false;
%elementName = input("Please enter the name of the element: ", "s");
if elementFound == false
    for i = 1:size(elementName_array)
        % strcmpi compares current iteration of array with user input
        % if current element name in array is equal to user input, element
        % information will be stored
        % comparison is NOT case sensitive
        if strcmpi(elementName_array(i), elementName)
            element_info = elementName_array{i,:};
            %element_info.symbol = symbol_array{i,:};
            %element_info.atomicNumber = atomicNumber_array{i,:};
            %element_info.atomicWeight = atomicWeight_array{i,:};
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