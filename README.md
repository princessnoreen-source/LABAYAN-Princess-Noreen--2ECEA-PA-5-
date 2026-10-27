# PROGRAMMING ASSIGNMENT #5
## Labayan, Princess Noreen A.
## 2ECE-A

This repository is a partial requirement for ECE 2112 "Advanced Computer Programming and Algorithms" as Programming Assignment #5. Its objective is to demonstrate the use of MATLAB in performing matrix operations, transpose operations, and solving systems of linear equations using the inverse method and Cramer's Rule.

## A. TRANSPOSE OPERATIONS

The goal of this problem is to create real and complex matrices and compare the results of different transpose operations performed on each matrix.

Following were the operators used to execute the code:

1. ```transpose(variable_name)```

   This function returns the transpose of a matrix by interchanging its rows and columns.

Example:

```
transpose(R)
```

2. ```variable_name'```

   This operator performs the complex-conjugate transpose. For real matrices, it behaves the same as the ordinary transpose. For complex matrices, it transposes the matrix and changes the sign of every imaginary component.

Example:

```
Z'
```

3. ```variable_name.'```

   This operator performs the non-conjugate transpose by interchanging the rows and columns without modifying any complex values.

Example:

```matlab
Z.'
```

4. ```disp(variable_name)```

   This function displays the contents of a variable in the MATLAB Command Window.

Example:

```matlab
disp(R)
```

Using the operators discussed above, the code below was created to compare the transpose operations for both the real matrix **R** and the complex matrix **Z**.

```matlab
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
```

---

## B. TWO METHODS FOR A LINEAR SYSTEM

The goal of this problem is to solve a system of four linear equations using both the inverse method and Cramer's Rule, then verify that both methods produce the same solution.

Following were the operators used to execute the code:

1. ```inv(variable_name)```

   This function computes the inverse of a square matrix.

Example:

```matlab
inv(A)
```

2. ```det(variable_name)```

   This function computes the determinant of a square matrix.

Example:

```matlab
det(A)
```

3. ```norm(variable_name)```

   This function computes the norm of a vector. It is used to verify that two solution vectors are numerically identical and that the computed solution satisfies the original system.

Example:

```matlab
norm(x_inv - x_cramer)
```

4. ```A(:,column_number)```

   This operator selects all rows of a specified column in a matrix. It is used in Cramer's Rule to replace one column of the coefficient matrix with the right-hand-side vector.

Example:

```matlab
A1(:,1) = b
```

5. ```disp(variable_name)```

   This function displays variables and numerical results in the MATLAB Command Window.

Example:

```matlab
disp(x_inv)
```

Using the operators discussed above, the code below was created to solve the linear system using the inverse method and Cramer's Rule, then verify the correctness of both solutions through numerical checks.

```matlab
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
```

Thank youuu for reading! <3
