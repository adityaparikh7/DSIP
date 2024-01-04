% Let x = [3 2 6 8]' and y = [4 1 3 5]' (NB. x and y should be column vectors).
% a.	Add the sum of the elements in x to y
% b.	Raise each element of x to the power specified by the corresponding element in y.
% c.	Divide each element of y by the corresponding element in x
% d.	Multiply each element in x by the corresponding element in y, calling the result "z".
% e.	Add up the elements in z and assign the result to a variable called "w".
% f.	Compute x' *y - w and interpret the result



x = [3; 2; 6; 8];
y = [4; 1; 3; 5];

result_a = y + sum(x);
disp('Result a:');
disp(result_a);

result_b = x.^y;
disp('Result b:');
disp(result_b);

result_c = y./x;
disp('Result c:');
disp(result_c);

z = x.*y;
disp('Result d:');
disp(z);

w = sum(z);
disp('Result e:');
disp(w);

result_f = x' * y - w;
disp('Result f:');
disp(result_f);

if result_f > 0
    interpretation = 'The result is positive.';
elseif result_f < 0
    interpretation = 'The result is negative.';
else
    interpretation = 'The result is zero.';
end

disp(['Interpretation: ', interpretation]);
