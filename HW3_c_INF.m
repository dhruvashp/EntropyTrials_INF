% Part c

% Simulating for H(X,Y)

% Note : Code from part a is very similar and thus explanatory comments
% have been removed for simplicity. Comments describing situations as and when necessary
% have been used.

% Computational Note :
% We know that X and Y are independent. Using this fact the process of
% entropy estimation can be simplified.

% I(X;Y) = 0, giving us H(Y|X) = H(Y)
% Additionally, H(X,Y) = H(X) + H(Y|X)
% So, H(X,Y) = H(X) + H(Y) directly

% Thus,
% ~H(X,Y) = ~H(X) + ~H(Y) where ~ denotes the estimates 
% ~H(Y) will be done in the same manner as ~H(X) was done, that is, by
% estimating the probability p(y).

% Due to similarities in the random variables in terms of alphabets and PMF
% not a lot of difference is to be made in the code.

out = cell(2,4);                              % FOR X
count_r = 0;
for M = [3,6]
    count_c = 0;
    count_r = count_r + 1;
    for n = [10,50,100,200]
        count_c = count_c + 1;
        out{count_r,count_c} = randi([1,M],1,n);
    end
end

out_y = cell(2,4);                           % FOR Y
count_r = 0;
for M = [3,6]
    count_c = 0;
    count_r = count_r + 1;
    for n = [10,50,100,200]
        count_c = count_c + 1;
        out_y{count_r,count_c} = randi([1,M],1,n);
    end
end

H = zeros(2,4);                              % FOR X
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
        pmf = local_pmf(local_pmf ~= null);                          
        H(count_i,count_j) = (-pmf*transpose(log(pmf)))/log(2);      
    end
end


H_y = zeros(2,4);                              % FOR Y
count_i = 0;
for i = [3,6]
    count_j = 0;
    count_i = count_i + 1;
    for j = [10,50,100,200]
        count_j = count_j + 1;
        local = out_y{count_i,count_j};
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
        pmf = local_pmf(local_pmf ~= null);                          
        H_y(count_i,count_j) = (-pmf*transpose(log(pmf)))/log(2);      
    end
end


H_xy_3_theo = log(9)/log(2);              
H_xy_6_theo = log(36)/log(2);              

H_xy_3_prac = H(1,:) + H_y(1,:);
H_xy_6_prac = H(2,:) + H_y(2,:);

trial_range = [10,50,100,200];
x = [0,250];
y_3 = [H_xy_3_theo,H_xy_3_theo];
y_6 = [H_xy_6_theo,H_xy_6_theo];

figure()
plot(trial_range,H_xy_3_prac,'-s',x,y_3),legend('Simulated','Actual');
title('Plot for M = 3')
xlabel('number of trials')
ylabel('Entropy H(X,Y)')

figure()
plot(trial_range,H_xy_6_prac,'-s',x,y_6),legend('Simulated','Actual');
title('Plot for M = 6')
xlabel('number of trials')
ylabel('Entropy H(X,Y)')










