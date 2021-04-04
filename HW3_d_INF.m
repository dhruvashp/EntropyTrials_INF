% Part d

% NOTE : It is again assumed that compute refers to theoretical calculation
% and not simulation based generation of pmf via trial simulation. Thus
% using MATLAB and hand calculations these quantities are evaluated.

% S = X + Y

% M = 3
% X,Y in {1,2,3}

% Thus, again we assume that estimations are not needed and we can just
% evaluate the quantities directly.

% S has alphabet {2,3,4,5,6} which is obvious.
% P(S=s) = sum (P(X=x,Y=y) over all x and y such that x+y=s) which is
% obvious

% P(S=2) = P(X=1,Y=1) = 1/9    (independency)
% P(S=3) = P(X=1,Y=2) + P(X=2,Y=1) = 2/9 
% P(S=4) = P(X=1,Y=3) + P(X=2,Y=2)+ P(X=3,Y=1) = 3/9
% P(S=5) = P(X=2,Y=3) + P(X=3,Y=2) = 2/9
% P(S=6) = P(X=3,Y=3) = 1/9

% NOTE : We could generate X,Y then X+Y and then estimate entropy by
% estimating probability of X+Y random variable. Since we aren't given the
% job of estimating entropy, we presume directly calculating entropy
% through theory suffices.

pmf_S_3 = [1/9,2/9,3/9,2/9,1/9];

H_S_3 = (-pmf_S_3*transpose(log(pmf_S_3)))/log(2);

H_XS_3 = log(9)/log(2);        % done on paper, this is H(X,S), again we presume here "estimation was not needed" and that computation meant theoretical computation

H_X_3 = log(3)/log(2);         % known already

H_SgX_3 = H_XS_3 - H_X_3;      % H(S|X)

I_XS_3 = H_S_3 - H_SgX_3;        % I(X;S)        

disp('The value of H(S) for M=3 is : ')
disp(H_S_3)
disp('The value of H(S|X) for M=3 is : ')
disp(H_SgX_3)
disp('The value of I(X;S) for M=3 is : ')
disp(I_XS_3)

% M = 6

pmf_S_6 = [1/36,2/36,3/36,4/36,5/36,6/36,5/36,4/36,3/36,2/36,1/36];       % similar to M=3, done by hand, easy to calculate

H_S_6 = (-pmf_S_6*transpose(log(pmf_S_6)))/log(2);

H_XS_6 = log(36)/log(2);                                                  % again done on paper, easily proved

H_X_6 = log(6)/log(2);

H_SgX_6 = H_XS_6 - H_X_6;

I_XS_6 = H_S_6 - H_SgX_6;

disp('The value of H(S) for M=6 is : ')
disp(H_S_6)
disp('The value of H(S|X) for M=6 is : ')
disp(H_SgX_6)
disp('The value of I(X;S) for M=6 is : ')
disp(I_XS_6)


disp('NOTE: These are theoretical values partially computed using hand and partially using MATLAB. It has been assumed estimation here is not needed via trials')



