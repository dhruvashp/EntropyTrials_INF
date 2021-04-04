Part c)
Plot Discussion

As can be seen from the curves for both H(X) and H(X,Y), we can see that with the method of entropy estimation that I utilized, there is very little difference between the rates of convergence for the entropy of a single random variable versus the entropy of a joint random variable.

Additionally a huge chunk of the arguments from part a) still apply. That is, if the number of trials are increased the estimated probabilities closely follow the distribution from wherein the trials have been realized and thus the entropies would then equate the entropies estimated. 

As such, a note that is interesting is follows,

In my estimation, the approach used was thus:

~H(X,Y) = ~H(X) + ~H(Y)

where ~ stands for our estimates of the entropies. Here this was possible due to the insight regarding the random variables, that they are independent.

However, this is not the only way via which the estimation of the H(X,Y) entropy could have been made. There are multiple other ways in which the entropy H(X,Y) could be estimated.

An example :

H(X,Y) = -sum over x and y of [p(x,y)log(p(x,y))]

Here we could have estimated the probability p(x,y) = P(X=x,Y=y) by observing the ordered pair (x,y) of the die rolls over n trials and evaluating the probability p(x,y) via the typical definition of frequency.

Another example could be :

Rather than observing ordered pair, we could observe x and y individually, then multiply their values to estimate p(x,y). Obviously this is possible due to the X and Y random variable being independent.

The approach I've used was similar to the latter example, but only acknowledging that the log of a product is its sum, and seperating expressions for x and y in the H(X,Y) entropy calculation.

The convergence rates for different approaches may compare differently to the convergence rate of H(X), possibly. Especially in the former example, which can be also executed with minimal code modifications, since in the former example we observe the ordered pair and since MATLAB generates the numbers randomly there is only a certain extent upto which we can trust the independence of the randomly generated numbers (in the pair). 

Thus,


CONCLUSION :
The curves for my convergence rates for H(X,Y) were strikingly similar in shape to H(X) because of my estimation technique, and the rate at which convergence occured also appeared to be approximately similar.