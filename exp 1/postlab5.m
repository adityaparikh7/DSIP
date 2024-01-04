% Given the array A = [2 4 1; 6 7 2; 3 5 9], provide the commands needed to 
% a. Assign the first row of A to a vector called x1
% b. Assign the last 2 rows of A to an array called y
% c. Compute the sum over the columns of A
% d. Compute the sum over the rows of A
% e. Compute the standard error of the mean of each column of A (NB. the standard error of the mean is defined as the standard deviation divided by the square root of the number of elements used to compute the mean.)


A = [2, 4, 1; 6, 7, 2; 3, 5, 9];

x1 = A(1, :);
disp('Vector x1:');
disp(x1);

y = A(2:end, :);
disp('Array y:');
disp(y);

sum_columns = sum(A, 1);
disp('Sum over the columns of A:');
disp(sum_columns);

sum_rows = sum(A, 2);
disp('Sum over the rows of A:');
disp(sum_rows);

std_dev = std(A, 0, 1);

n = size(A, 1);  
sem = std_dev ./ sqrt(n);

disp('Standard Error of the Mean for each column of A:');
disp(sem);

