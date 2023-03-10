function selected_image = imageSelectV2()
% imageSelect uses a for loop and if statement to search through a folder
% of 118 images of elements in the periodic table,
% the function compares the filenames of the images with the
% element name being sought after

% ***imageSelectV2 searches through the element_images folder***

% all images taken from https://sciencenotes.org/periodic-table-element-cells/
% location of folder containing the images
location = 'C:\Users\dangh\OneDrive - University of Adelaide\MATLAB Project 1\element_images';
% Create a datastore for all images in folder
dataStore = imageDatastore(location);

% intialise an empty vector for file_names
file_names = [];
image_found = 0;

for i = 1:size(dataStore.Files,1)
    file_names = [file_names, dataStore.Files(i)];
    
    if strfind(lower(dataStore.Files(i)), lower('carbon'))
        image_found = 1;
      
    end
    if image_found == 1
        selected_image_cell = dataStore.Files(i);
        selected_image = char(selected_image_cell);
        disp(selected_image);
        imshow(selected_image);
    end
end

end % end of imageSelect