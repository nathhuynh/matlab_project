function element_image = imageSelect(element_name)
% imageSelect uses a for loop and if statement to search through a folder
% of 118 images of elements in the periodic table,
% the function compares the filenames of the images with the
% element name being sought after

% ***imageSelect searches through the element_images2 folder***

% all images taken from https://elements.wlonk.com/
% location of folder containing the images
folder_location = 'C:\Users\dangh\OneDrive - University of Adelaide\MATLAB Project 1\element_images2';
% Create a datastore for all images in folder
dataStore = imageDatastore(folder_location);

for i = 1:size(dataStore.Files,1)
    % strfind searches for the inputted element name within the current
    % data store file name
    % 'lower' removes the case sensitivity of the search
    matches = strfind(lower(dataStore.Files(i)), lower(element_name));
    % file_found returns logical 1 if any elements in matches is a file
    % name
    file_found = any(matches{:});
    
    % if file_found is equal to 1, the current image file is assigned to
    % selected_image_cell
    if file_found == 1
        selected_image_cell = dataStore.Files(i);
        % using char, the file name is converted from a cell value to a
        % character array, allowing for the image name to be used to
        % display the selected image
        selected_image = char(selected_image_cell);
        element_image = imshow(selected_image);
        
    end
end

end % end of imageSelect