matrix=[1,2,3;4,5,6;7,8,9];

% printing matrix
disp('Matrix is: ');
for i = 1:size(matrix, 1)
    disp(matrix(i, :));  
end

%printing size of matrix
matrixSize = size(matrix);
disp(['The matrix has ', num2str(matrixSize(1)), ' rows and ', num2str(matrixSize(2)), ' columns.']);

%printing rank of matrix
matrixRank = rank(matrix);
disp(['The rank of the matrix is ', num2str(matrixRank), '.']);

%calculating the determinant of the matrix
matrixDeterminant = det(matrix);
disp(['The determinant of the matrix is ', num2str(matrixDeterminant), '.']);

%creating identity matrix
n=3;
identityMatrix = eye(n);
disp('The identity matrix is: ');
disp(identityMatrix);   