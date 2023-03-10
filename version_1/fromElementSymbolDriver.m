% input: H
elementSymbol = "H";
expected = "Hydrogen H 1 1.007";
[element_name, element_symbol, element_number, element_weight] = fromElementSymbol(elementSymbol);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementSymbol, expected, element_name, element_symbol, element_number, element_weight);

% input: h (lowercase)
elementSymbol = "h";
expected = "Hydrogen H 1 1.007";
[element_name, element_symbol, element_number, element_weight] = fromElementSymbol(elementSymbol);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementSymbol, expected, element_name, element_symbol, element_number, element_weight);

% input: pb (lowercase, 2 letters)
elementSymbol = "pb";
expected = "Lead	Pb	82	207.2";
[element_name, element_symbol, element_number, element_weight] = fromElementSymbol(elementSymbol);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementSymbol, expected, element_name, element_symbol, element_number, element_weight);


% input: RA (UPPERCASE, 2 letters)
elementSymbol = "RA";
expected = "Radium	Ra	88	226";
[element_name, element_symbol, element_number, element_weight] = fromElementSymbol(elementSymbol);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementSymbol, expected, element_name, element_symbol, element_number, element_weight);

% input: Lr (mixed case, 2 letters)
elementSymbol = "Lr";
expected = "Lawrencium	Lr	103	262";
[element_name, element_symbol, element_number, element_weight] = fromElementSymbol(elementSymbol);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementSymbol, expected, element_name, element_symbol, element_number, element_weight);


% input: bH (lower case first, upper case second, 2 letters)
elementSymbol = "bH";
expected = "Bohrium	Bh	107	264";
[element_name, element_symbol, element_number, element_weight] = fromElementSymbol(elementSymbol);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementSymbol, expected, element_name, element_symbol, element_number, element_weight);

% PRODUCING ERRORS:

% input: YO (symbol does not exist)
elementSymbol = "YO";
expected = "error";
[element_name, element_symbol, element_number, element_weight] = fromElementSymbol(elementSymbol);
fprintf("input: %s | expected: %s | result: %s - %s - %d - %0.3f\n", ...
    elementSymbol, expected, element_name, element_symbol, element_number, element_weight);

