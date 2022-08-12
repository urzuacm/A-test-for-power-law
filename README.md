# A-test-for-power-law

A test statistic for power-law behavior written both in Python and R

## Author

Carlos M. Urzúa, urzuacarlosm@gmail.com

## Description

Given a vector *x* of data, the statistic **pwlaw** proposed in Urzúa (2020) can be used to test for power-law behavior. Under the null, **pwlaw** is asymptotically distributed as a chi-squared with two degrees of freedom, and so the probability value can be estimated accordingly. But if the number of observations is less or equal than 100, it is suggested to use instead the critical values given in Table 1 of that paper.

The vector *x* does not need to be ordered, and only the observations greater or equal than a given value of *mu* are used to compute the statistic. This is handy because the power-law hypothesis is typically rejected when *mu* (>= minimum element of *x*) is not close to the right tail of the distribution. Clauset et al (2019) .  

## Syntax

* The call function is simply *pwlaw(*x*,*mu*) in the case of, both, the Python script *pwlaw.py* and the R program *pwlaw.R* included in this repository.

## Notes

* The statistical test is locally optimal if the possible alternative distributions are contained in the Pareto Type (IV) family. The last output of the program provides a maximum-likelihood estimate of the shape parameter alpha. If the null hypothesis of power-law behavior cannot be rejected, this estimate may be of some interest. But if the null is rejected, then alpha is not the only parameter that determines the tail of the distribution.

* Using the **pwlaw** test statistic, Urzúa (2020) examines four classical data sets: the frequency of occurrence of unique words in Moby Dick; the human populations of US cities; the frequency of occurrence of US family names; and the peak gamma-ray intensity of solar flares. The data sets are publicly available in Clauset (2019).

* Zipf's law is a limit case among the distributions that exhibit a power-law behavior. To test for that particular case one could use the **lmz** statistic proposed in Urzúa (2000). The repository https://github.com/urzuacarlosm/A-test-for-Zipf-law contains the Python and R codes.

## Bibliography

Clauset, A. 2019. Power-law distributions. <https://aaronclauset.github.io/powerlaws/>

Clauset, A., C. R. Shalizi, and M. E. J. Newman. 2009. Power-law distributions in empirical data. *SIAM Review*, vol. 51, pp. 661–703. 

Urzúa, C. M. 2000. A simple and efficient test for Zipf´s law. *Economics Letters*, vol. 66, pp. 257-260.

Urzúa, C. M. 2020. A simple test for power-law behavior. *Stata Journal*, vol. 20, no. 3, pp. 604-612.

