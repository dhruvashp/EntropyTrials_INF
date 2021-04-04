% Part e
% Some computations done by hand
% Same assumption of trial based estimation not needed 
% Comments mostly removed due to similarity with e

% Z = XY;

% M = 3

% Z = XY has alphabet {1,2,3,4,6,9} with PMF {1/9,2/9,2/9,1/9,2/9,1/9}
% respectively, can be easily done using the same method as in Part d

pmf_Z_3 = [1/9,2/9,2/9,1/9,2/9,1/9];

H_Z_3 = (-pmf_Z_3*transpose(log(pmf_Z_3)))/log(2);

H_XZ_3 = log(9)/log(2);          % easy to check

H_X_3 = log(3)/log(2);        

H_ZgX_3 = H_XZ_3 - H_X_3;      % H(Z|X)

I_XZ_3 = H_Z_3 - H_ZgX_3;        % I(X;Z)

disp('The value of H(Z) for M=3 is : ')
disp(H_Z_3)
disp('The value of H(Z|X) for M=3 is : ')
disp(H_ZgX_3)
disp('The value of I(X;Z) for M=3 is : ')
disp(I_XZ_3)


% M = 6

% Via some simple hand calculation, M = 6, gives alphabet of Z as
% {1,2,3,4,5,6,8,9,10,12,15,16,18,20,24,25,30,36} with PMF of 
% {1/36,2/36,2/36,3/36,2/36,4/36,2/36,1/36,2/36,4/36,2/36,1/36,2/36,2/36,2/36,1/36,2/36,1/36} respectively

pmf_Z_6 = [1/36,2/36,2/36,3/36,2/36,4/36,2/36,1/36,2/36,4/36,2/36,1/36,2/36,2/36,2/36,1/36,2/36,1/36];

H_Z_6 = (-pmf_Z_6*transpose(log(pmf_Z_6)))/log(2);

H_XZ_6 = log(36)/log(2);         % similar to M=3, easy to check

H_X_6 = log(6)/log(2);

H_ZgX_6 = H_XZ_6 - H_X_6;

I_XZ_6 = H_Z_6 - H_ZgX_6;

disp('The value of H(Z) for M=6 is : ')
disp(H_Z_6)
disp('The value of H(Z|X) for M=6 is : ')
disp(H_ZgX_6)
disp('The value of I(X;Z) for M=6 is : ')
disp(I_XZ_6)

disp('Same assumptions as in Part d apply here as well, we assume direct theoretic calculation is needed and not a trial based estimation')


