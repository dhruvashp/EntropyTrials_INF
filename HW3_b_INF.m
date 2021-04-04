% Part b

% We assume here no estimation is needed. Direct calculation is needed and
% that only has been done.

H_xy_3 = log(9)/log(2);          % x,y are independent, individually uniform with each x and y having the same number of alphabets (3)

H_xy_6 = log(36)/log(2);         % similar explanation

I_xy_3 = 0;                      % independence of x and y

I_xy_6 = 0;                      % similar reason

H_xgy_3 = log(3)/log(2);         % independence so equal to H(x)

H_xgy_6 = log(6)/log(2);         % same


disp('H(X,Y) for M = 3 is :')
disp(H_xy_3)

disp('H(X,Y) for M = 6 is :')
disp(H_xy_6)

disp('I(X;Y) for M = 3 is :')
disp(I_xy_3)

disp('I(X;Y) for M = 6 is :')
disp(I_xy_6)

disp('H(X|Y) for M = 3 is :')
disp(H_xgy_3)

disp('H(X|Y) for M = 6 is :')
disp(H_xgy_6)

disp('These results are due to independence of X and Y and can directly be obtained')