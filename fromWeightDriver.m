% input: 1.007
elementWeight = 1.007;
expected = "Hydrogen H 1 1.007";
[element_name, element_symbol, element_number, element_weight] = fromWeight(elementWeight);
fprintf("input: %d | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementWeight, expected, element_name, element_symbol, element_number, element_weight);

% input: 30.974 (3 decimal points)
elementWeight = 30.974;
expected = "Phosphorus - P - 15 - 30.974";
[element_name, element_symbol, element_number, element_weight] = fromWeight(elementWeight);
fprintf("input: %d | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementWeight, expected, element_name, element_symbol, element_number, element_weight);

% input: 200.59 (2 decimals)
elementWeight = 200.59;
expected = "Mercury	- Hg - 80 - 200.59";
[element_name, element_symbol, element_number, element_weight] = fromWeight(elementWeight);
fprintf("input: %d | expected: %s | result: %s - %s - %d - %0.2f\n", ...
    elementWeight, expected, element_name, element_symbol, element_number, element_weight);

% input: 288 (no decimals)
elementWeight = 288;
expected = "Moscovium - Mc - 115 - 288";
[element_name, element_symbol, element_number, element_weight] = fromWeight(elementWeight);
fprintf("input: %d | expected: %s | result: %s - %s - %d - %d\n", ...
    elementWeight, expected, element_name, element_symbol, element_number, element_weight);