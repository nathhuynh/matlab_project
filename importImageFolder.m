
% all images taken from https://sciencenotes.org/periodic-table-element-cells/
location = 'C:\Users\dangh\OneDrive - University of Adelaide\MATLAB Project 1\element_images';       %  folder in which images exist
ds = imageDatastore(location); %  Creates a datastore for all images in folder

while hasdata(ds) 
    images = read(ds) ; % read images from datastore
end

file_name = [];


for i = 1:size(ds.Files,1)
    file_name = [file_name, ds.Files(i)];
    
    matches = strfind(ds.Files(i),'Hydrogen');
    tf = any(vertcat(matches{:}));
    if tf == 1
        selected_image = ds.File(i);
    end
end
