%Let x = [2 5 1 6].
% a.Add 16 to each element
% b.Add 3 to just the odd-index elements
% c.Compute the square root of each element
% d.Compute the square of each element

x = [2 5 1 6];

%Add 16 to Each Element
x = x + 16;
disp('Result a:');
disp(x);

%Add 3 to Just the Odd-Index Elements
indices = 1:2:length(x);
x(indices) = x(indices) + 3;
disp('Result b:');
disp(x);

%Compute the Square Root of Each Element
result_c = sqrt(x);
disp('Result c:');
disp(result_c);

%Compute the Square of Each Element
result_d = x.^2;
disp('Result d:');
disp(result_d);