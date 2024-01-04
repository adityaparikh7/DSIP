%Create a vector x with the elements, xn = (-1)^n+1/(2n-1)
%Add up the elements of the version of this vector that has 100 elements.


n = 1:100;  
x = (-1).^(n + 1) ./ (2 .* n - 1);
sum_x = sum(x);
disp(['The sum of the elements of the vector x with 100 elements is: ', num2str(sum_x)]);
