HW3
Computer Problem
a)
Few comments on the plots obtained

As can be seen in the plots that I have attached for H(X), there is a plot for M=3 and for M=6.

As stated in a) parts code comments we have assumed "learning curves" for each n are not to be obtained, and that we only need the value of H(X) for different trial numbers. We assume that we don't monitor the value in H after each trial, that is starting from 1 to, say, 100, we update PMF and calcuate entropy after each trial. So we have 100 entropies that will be plotted in a learning fashion as the trial increases, live or actively.

Again, doing so wouldn't be difficult, but we assume this isn't what has been asked in the question and thus we have only calculated the value of H(X) at n=10,50,100,200 without observing its active updates. Also "active" learning would take quite a while, computationally. Additionally since so may n values have been given, this assumption makes sense.


EXPLANATION OF GRAPHS

Both the graphs tend to move towards the actual theoretical entropy as the number of trial increases. This makes sense since,

~H(X) depends on ~p(X=x)
That is, estimate of entropy depends on our estimate of probability. Note that ~ referes to entropy here. We know that since we are generating trials from a uniform distribution, in an infinite number of trials, the calculated frequential probability will equal the probability of the distribution from which it is generated. 

Thus larger the trial number, better will be our estimate of probability, and thus better will be our estimate of the actual theoretical true entropy.



IMPORTANT NOTE:
When the code is run multiple times, sometimes for small n values the estimates of entropy deviate highly from the true entropy and thus sometimes there is a weird high and low in the initial portion of the curve. However from n=100 to n=200 trials, there is a unanimous increase in entropy towards the true entropy in terms of at least the runs I observed (for both M values). The curves I have provided correspond to a run I presume is the most accurate representation on what is the actual nature of the curve.

If entropy for each trial number is calculated multiple times and averaged in chains of trials, this randomness of the estimate in the initial portion may then naturally resolve (Monte-Carlo estimation)


OVERALL CONCLUSION
As n increases our estimate moves closer to the true entropy value