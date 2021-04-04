% Part a

% NOTE : Here we will only realize X, since only that is needed and it will
% also be a good simple starting point of working with the problem

% ESTIMATING ENTROPY
% Entropy is defined as :
% H = -sum(p(i)log(p(i))) over all i
% where p(i) = P(X=i)

% Thus estimating entropy becomes a simple job of estimating probabilities
% over trials, despite the fact that we will be generating these trials
% from a pre-defined uniform distribution.

% alphabet of X = {1,2,...,M} with uniform PMF for some M

% Consider that a total of t trials are performed (independent)and say that
% the result in a trial number j in {1,2,...,t} is r(j)

% From the above definitions, we have, then,
% ~p(X=i) = (total count of trials with r(j) = i)/(t)
% ~ represents the probability estimate
% Using this estimate we evaluate our entropy
% NOTE : If the count comes out to be 0, then that term is neglected.

% Now that ~H(X) generation is discussed, we generate trial result vectors
% for the requisite number of trials for the requisite M values. We will
% work in a case specific manner, rather than a general manner, even though
% generalizing won't be much different.

out = cell(2,4);
count_r = 0;
for M = [3,6]
    count_c = 0;
    count_r = count_r + 1;
    for n = [10,50,100,200]
        count_c = count_c + 1;
        out{count_r,count_c} = randi([1,M],1,n);
    end
end

% NOTE :
% out is 2x4 cell with following data :
%      3,10    3,50    3,100    3,200
%      6,10    6,50    6,100    6,200
% where i,j represents a row vector of trial outputs for M=i and n=j

% ANOTHER NOTE :
% randi function generates in MATLAB, automatically, a uniformly
% distributed discrete random variable. As such, multiple other techniques
% could be used, and even though this isn't exactly a "from scratch" random
% variable generation, generating uniformly discrete random variables using
% a uniform continuous distribution from (0,1) is an extremely easy task to
% perform. As such, because we have already been provided with an inbuilt
% MATLAB function, we have not "generated" such a uniform discrete
% distribution "from scratch".

% Additional Assumption :
% We assume that we don't have to plot a "learning" curve, which updates
% PMF after each trial for a given M, then using the updated PMF calculates
% the entropy. Then plots it against the current trial number. We assume
% that entropy, say for M=3 and n=10, will be calculated only once using
% the PMF obtained once all the trials are observed to evaluate the PMF.
% This also makes sense since otherwise in the question only n=200 would be
% given as opposed to different n values, since anyways for n=200, in the
% learning type plot, n=50 would have been anyways examined.

% THUS, we have plotted H(for n=10) against n=10 rather than letting H
% develop for n=10 from n=1, updating PMF and entropy in single trial steps
% till we reach 10. Note doing this isn't difficult, and we can easily
% obtain a learning curve for all n (even though, practically, just a
% single n might suffice (the one with largest value) to draw such a
% learning curve)

H = zeros(2,4);
count_i = 0;
for i = [3,6]
    count_j = 0;
    count_i = count_i + 1;
    for j = [10,50,100,200]
        count_j = count_j + 1;
        local = out{count_i,count_j};
        local_pmf = zeros(1,i);
        for p = 1:i
            occur = 0;
            for q = 1:j
                if local(1,q) == p
                    occur = occur + 1;
                end
            end
            local_pmf(1,p) = occur/j;
        end
        null = 0;
        pmf = local_pmf(local_pmf ~= null);                          % weeding out alphabets that appear with zero probability
        H(count_i,count_j) = (-pmf*transpose(log(pmf)))/log(2);      % to convert from nats to bits since log in MATLAB is natural log
    end
end

% disp(H) (to test output before plotting the relevant curves)

% NOTE :
% H contains (in 2x4 matrix) :
%       3,10   3,50    3,100    3,200
%       6,10   6,50    6,100    6,200

% Where i,j is from i=M and j=n and the entry is the simulated entropy
% evaluated (Entropy estimate using our probability estimate as such)

H_3_theo = log(3)/log(2);              % they are uniform
H_6_theo = log(6)/log(2);              % they are uniform

H_3_prac = H(1,:);
H_6_prac = H(2,:);

trial_range = [10,50,100,200];
x = [0,250];
y_3 = [H_3_theo,H_3_theo];
y_6 = [H_6_theo,H_6_theo];

figure()
plot(trial_range,H_3_prac,'-s',x,y_3),legend('Simulated','Actual');
title('Plot for M = 3')
xlabel('number of trials')
ylabel('Entropy')

figure()
plot(trial_range,H_6_prac,'-s',x,y_6),legend('Simulated','Actual');
title('Plot for M = 6')
xlabel('number of trials')
ylabel('Entropy')










