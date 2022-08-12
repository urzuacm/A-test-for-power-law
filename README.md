# A-test-for-power-law

A test statistic for power-law behavior written both in Python and R

## Author

Carlos M. Urzúa, urzuacarlosm@gmail.com

## Description

Given a vector *x* of positive real numbers, the statistic **lmz** proposed in Urzúa (2000) can be used to test for Zipf's law. Under the null, **lmz** is asymptotically distributed as a chi-squared distribution with two degrees of freedom, and so the probability value can be estimated accordingly. But if the number of observations is less or equal than 30, it is suggested to use instead the critical values given in Table 1 of that paper.

The vector *x* does not need to be ordered, and only the observations greater or equal than a given value of *mu* are used to compute the statistic. This is handy because Zipf's law is typically rejected when *mu* (>= minimum element of *x*) is not close to the right tail of the distribution. Contrast the two examples given in the last section of Urzúa (2000).  

## Syntax

* The call function is simply *lmz*(*x*,*mu*) in the case of, both, the Python script *lmz.py* and the R program *lmz.R* included in this repository.







## Description

Given a vector *x* of data, the statistic **pwlaw** proposed in Urzúa (2020) can be used to test for power-law behavior. Since, under the null, **pwlaw** is asymptotically distributed as a chi-squared with two degrees of freedom, the p-value is calculated accordingly. But if the number of observations is less or equal than 100, it is suggested to use instead the critical values given in Table 1 of that paper.

## Notes

* The statistical test is locally optimal if the possible alternative distributions are contained in the Pareto Type (IV) family. The last output of the program provides a maximum-likelihood estimate of the shape parameter alpha. If the null hypothesis of power-law behavior cannot be rejected, this estimate may be of some interest. But if the null is rejected, then alpha is not the only parameter that determines the tail of the distribution.

* Using the **pwlaw** test statistic, Urzúa (2020) examines four classical data sets: the frequency of occurrence of unique words in Moby Dick; the human populations of US cities; the frequency of occurrence of US family names; and the peak gamma-ray intensity of solar flares. The data sets are publicly available in Clauset (2019).

* In a diverse number of disciplines, from Linguistics to Geography, it is not uncommon to test for Zipf's law. It is worth noticing, however, that such a law is a limit case among the distributions that exhibit a power-law behavior. To test for that behavior one could use the **pwlaw** statistic proposed in Urzúa (2020). The repository https://github.com/urzuacarlosm/A-test-for-power-law contains the Python and R codes.





## Bibliography

Clauset, A. Power-law distributions. 2019. <https://aaronclauset.github.io/powerlaws/>

Clauset, A., C. R. Shalizi, and M. E. J. Newman. 2009. Power-law distributions in empirical data. *SIAM Review*, vol. 51, pp. 661–703. 

Urzúa, C. M. 2000. A simple and efficient test for Zipf´s law. *Economics Letters*, vol. 66, pp. 257-260.

Urzúa, C. M. 2020. A simple test for power-law behavior. *Stata Journal*, vol. 20, no. 3, pp. 604-612.

