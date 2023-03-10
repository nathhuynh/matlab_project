% name, upper-case
[element_name, element_symbol, element_number, element_weight] = element_database("Name", "HYDROGEN");
% expected output: Hydrogen - H - 1 - 1.007
fprintf("result: %s - %s - %d - %0.3f\n",element_name, element_symbol, element_number, element_weight);

% name, lower-case
[element_name, element_symbol, element_number, element_weight] = element_database("Name", "hydrogen");
% expected output: Hydrogen - H - 1 - 1.007
fprintf("result: %s - %s - %d - %0.3f\n",element_name, element_symbol, element_number, element_weight);

% name, mixed-case
[element_name, element_symbol, element_number, element_weight] = element_database("Name", "hyDrOgEn");
% expected output: Hydrogen - H - 1 - 1.007
fprintf("result: %s - %s - %d - %0.3f\n",element_name, element_symbol, element_number, element_weight);

% symbol, mixed-case
[element_name, element_symbol, element_number, element_weight] = element_database("symbol", "Ba");
% expected output: Barium - Ba - 56	- 137.327
fprintf("result: %s - %s - %d - %0.3f\n",element_name, element_symbol, element_number, element_weight);

% number, no decimals
[element_name, element_symbol, element_number, element_weight] = element_database("Number", 118);
% expected output: Oganesson - Og - 118	- 294
fprintf("result: %s - %s - %d - %d\n",element_name, element_symbol, element_number, element_weight);

% weight, two decimals
[element_name, element_symbol, element_number, element_weight] = element_database("weight", 118.71);
% expected output: Tin - Sn - 50 - 118.71
fprintf("result: %s - %s - %d - %0.2f\n",element_name, element_symbol, element_number, element_weight);

% incorrect input type: height
[element_name, element_symbol, element_number, element_weight] = element_database("height", 118.71);
% expected output: Input type unrecognised
fprintf("result: %s - %s - %d - %0.2f\n",element_name, element_symbol, element_number, element_weight);


