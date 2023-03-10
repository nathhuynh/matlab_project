% input: Hydrogen
elementName = "Hydrogen";
expected = "Hydrogen";
element_info = fromElementName(elementName);
fprintf("input: %s | expected: %s | result: %s\n",elementName, expected, element_info);

% input: hydrogen (lowercase)
elementName = "hydrogen";
expected = "Hydrogen";
element_info = fromElementName(elementName);
fprintf("input: %s | expected: %s | result: %s\n",elementName, expected, element_info);

% input: Nitrogen
elementName = "Nitrogen";
expected = "Nitrogen";
element_info = fromElementName(elementName);
fprintf("input: %s | expected: %s | result: %s\n",elementName, expected, element_info);

% input: CARBON (all uppercase)
elementName = "CARBON";
expected = "Carbon";
element_info = fromElementName(elementName);
fprintf("input: %s | expected: %s | result: %s\n",elementName, expected, element_info);
