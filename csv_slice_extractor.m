function csv_slice_extractor(start_row,end_row,inputFile,outputFile)

% 1. Read the entire CSV into a table
disp('Reading full CSV file...');
T = readtable(inputFile);

% 2. Extract the slice
% Syntax is T(rows, columns)
% We use start_row:end_row for the rows and ':' for all columns
disp('Extracting rows...');
extracted_T = T(start_row:end_row, :);

% 3. Save the extracted slice to a new CSV
disp('Saving new CSV file...');
writetable(extracted_T, outputFile);

disp('Done.');