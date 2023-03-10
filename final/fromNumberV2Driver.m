% input: 1
elementNumber = 1;
expected = "Hydrogen H 1 1.007";
[element_name, element_symbol, element_number, element_weight] = fromNumberV2(elementNumber);
fprintf("input: %d | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementNumber, expected, element_name, element_symbol, element_number, element_weight);

% input: 2
elementNumber = 2;
expected = "Helium - He - 2 - 4.002";
[element_name, element_symbol, element_number, element_weight] = fromNumberV2(elementNumber);
fprintf("input: %d | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementNumber, expected, element_name, element_symbol, element_number, element_weight);

% input: 10
elementNumber = 10;
expected = "Neon - Ne - 10 - 20.18";
[element_name, element_symbol, element_number, element_weight] = fromNumberV2(elementNumber);
fprintf("input: %d | expected: %s | result: %s - %s - %d - %0.2f\n", ...
    elementNumber, expected, element_name, element_symbol, element_number, element_weight);

% input: 100
elementNumber = 100;
expected = "Fermium	- Fm - 100 - 257";
[element_name, element_symbol, element_number, element_weight] = fromNumberV2(elementNumber);
fprintf("input: %d | expected: %s | result: %s - %s - %d - %d\n", ...
    elementNumber, expected, element_name, element_symbol, element_number, element_weight);


% input: 110
elementNumber = 110;
expected = "Darmstadtium - Ds - 110 - 271";
[element_name, element_symbol, element_number, element_weight] = fromNumberV2(elementNumber);
fprintf("input: %d | expected: %s | result: %s - %s - %d - %d\n", ...
    elementNumber, expected, element_name, element_symbol, element_number, element_weight);

% input: 1.5
elementNumber = 1.5;
expected = "Element could not be found with number: 1.5";
[element_name, element_symbol, element_number, element_weight] = fromNumberV2(elementNumber);
fprintf("input: %d | expected: %s | result: %s - %s - %d - %d\n", ...
    elementNumber, expected, element_name, element_symbol, element_number, element_weight);
