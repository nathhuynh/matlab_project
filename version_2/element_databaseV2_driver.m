% name, upper-case
[element_info] = element_databaseV2("Name", "HYDROGEN");
% expected output: Hydrogen - H - 1 - 1.007
disp(element_info)

% name, lower-case
[element_info] = element_databaseV2("Name", "hydrogen");
% expected output: Hydrogen - H - 1 - 1.007
disp(element_info)

% name, mixed-case
[element_info] = element_databaseV2("Name", "hyDrOgEn");
% expected output: Hydrogen - H - 1 - 1.007
disp(element_info)

% symbol, mixed-case
[element_info] = element_databaseV2("symbol", "Ba");
% expected output: Barium - Ba - 56	- 137.327
disp(element_info)

% number, no decimals
[element_info] = element_databaseV2("Number", 118);
% expected output: Oganesson - Og - 118	- 294
disp(element_info)

% weight, two decimals
[element_info] = element_databaseV2("weight", 118.71);
% expected output: Tin - Sn - 50 - 118.71
disp(element_info)

% incorrect input type: height
[element_info] = element_databaseV2("height", 118.71);
% expected output: Input type unrecognised
disp(element_info)


