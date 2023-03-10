% input: H
elementSymbol = "H";
expected = "Hydrogen H 1 1.007";
[element_name, element_symbol, element_number, element_weight] = fromElementSymbolV2(elementSymbol);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementSymbol, expected, element_name, element_symbol, element_number, element_weight);

% input: h (lowercase)
elementSymbol = "h";
expected = "Hydrogen H 1 1.007";
[element_name, element_symbol, element_number, element_weight] = fromElementSymbolV2(elementSymbol);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementSymbol, expected, element_name, element_symbol, element_number, element_weight);

% input: Cn (two letters, mixed-case)
elementSymbol = "Cn";
expected = "Copernicium Cn 112 285";
[element_name, element_symbol, element_number, element_weight] = fromElementSymbolV2(elementSymbol);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %d\n", ...
    elementSymbol, expected, element_name, element_symbol, element_number, element_weight);

% input: NH (two letters, upper-case)
elementSymbol = "NH";
expected = "Nihonium Nh 113 284";
[element_name, element_symbol, element_number, element_weight] = fromElementSymbolV2(elementSymbol);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %d\n", ...
    elementSymbol, expected, element_name, element_symbol, element_number, element_weight);


% input: al (two letters, lower-case)
elementSymbol = "al";
expected = "Aluminum Al 13 26.982";
[element_name, element_symbol, element_number, element_weight] = fromElementSymbolV2(elementSymbol);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementSymbol, expected, element_name, element_symbol, element_number, element_weight);