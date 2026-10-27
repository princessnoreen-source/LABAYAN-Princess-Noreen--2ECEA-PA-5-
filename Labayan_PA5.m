
% Labayan, Princess Noreen A.
% 2ECEA
% ECE 2112 - Experiment 5: Introduction to MATLAB Programming


%% PROBLEM A: TRANSPOSE OPERATIONS

R = [5 -2 0 7; 1 3 -4 2; 6 0 8 -1];

Z = [2+3i  -1+4i  5-2i;  -3+1i  6  2+5i];

disp('R =')
disp(R)

disp('transpose(R) =')
disp(transpose(R))

disp('R'' =')
disp(R')

disp('R.'' =')
disp(R.')

disp('Z = ')
disp(Z)

disp('transpose(Z) =')
disp(transpose(Z))

disp('Z'' =')
disp(Z')

disp('Z.'' =')
disp(Z.')

% a. For real Matrix R, all operations yield identical results
% b. For complex Matrix Z, both transpose(Z) and Z.' gave identical results
% c. When the matrix contains complex entries, the apostrophe operator does
% not just transpose the matrix but also changes the sign of the complex
% conjugate.


%% PROBLEM B: TWO METHODS FOR A LINEAR SYSTEM

% coefficient matrix and right-hand side
A = [ 2 -1  3  2; 1  4 -2  1; 3  2  1 -1; -2  3  4  2];

b = [16; -7; 6; 7];

% determinant of A 
detA = det(A);
disp('det(A) =')
disp(detA)

% Method 1: Inverse method
x_inv = inv(A) * b;


% Method 2: Cramer's Rule
A1 = A; A1(:,1) = b;
A2 = A; A2(:,2) = b;
A3 = A; A3(:,3) = b;
A4 = A; A4(:,4) = b;

x_cramer = [det(A1); det(A2); det(A3); det(A4)] / detA;

disp('Inverse method (x_inv) =')
disp(x_inv)

disp('Cramer''s Rule (x_cramer) =')
disp(x_cramer)

% Required checks 
disp('norm(x_inv - x_cramer) =')
disp(norm(x_inv - x_cramer))

disp('norm(A*x_inv - b) =')
disp(norm(A*x_inv - b))