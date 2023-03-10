% input: Hydrogen
elementName = "Hydrogen";
expected = "Hydrogen H 1 1.007";
[element_name, element_symbol, element_number, element_weight] = fromElementNameV2(elementName);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementName, expected, element_name, element_symbol, element_number, element_weight);

% input: hydrogen (lowercase)
elementName = "hydrogen";
expected = "Hydrogen H 1 1.007";
[element_name, element_symbol, element_number, element_weight] = fromElementNameV2(elementName);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementName, expected, element_name, element_symbol, element_number, element_weight);

% input: Zinc
elementName = "Zinc";
expected = "Zinc Zn 30 65.38";
[element_name, element_symbol, element_number, element_weight] = fromElementNameV2(elementName);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %0.2f\n", ...
    elementName, expected, element_name, element_symbol, element_number, element_weight);

% input: Roentgenium
elementName = "Roentgenium";
expected = "Roentgenium	Rg 111 272";
[element_name, element_symbol, element_number, element_weight] = fromElementNameV2(elementName);
fprintf("input: %s | expected: %s | result: %s ~ %s ~ %d ~ %d\n", ...
    elementName, expected, element_name, element_symbol, element_number, element_weight);

