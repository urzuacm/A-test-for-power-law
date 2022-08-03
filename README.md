# A-test-for-power-law

A test statistic for power-law behavior written both in Python and R

## Author

Carlos M. Urzúa, urzuacarlosm@gmail.com

## Description

Given a vectorof data, the statistic **pwlaw** proposed in Urzúa (2020) can be used to test for power-law behavior. Since, under the null, **pwlaw** is asymptotically distributed as a chi-squared with two degrees of freedom, the p-value is calculated accordingly. But if the number of observations is less or equal than 100, it is suggested to use instead the critical values given in Table 1 of that paper.

## Notes

* The statistical test is locally optimal if the possible alternative distributions are contained in the Pareto Type (IV) family. The last output of the program provides a maximum-likelihood estimate of the shape parameter alpha. If the null hypothesis of power-law behavior cannot be rejected, this estimate may be of some interest. But if the null is rejected, then alpha is not the only parameter that determines the tail of the distribution.

* Using the PWL test, Urzúa (2020) examines four classical data sets: the frequency of occurrence of unique words in Moby Dick; the human populations of US cities; the frequency of occurrence of US family names; and the peak gamma-ray intensity of solar flares. The data sets are publicly available in Clauset (2019).

* If the researcher is interested on testing in particular for Zipf's law, the LMZ test proposed in Urzúa (2000) can be used for that end. It can be calculated using the Pyhton script or the R program in the companion repository A-test-for-zipf's-law.



## Bibliography

Clauset, A. Power-law distributions. 2019. <https://aaronclauset.github.io/powerlaws/>

Clauset, A., C. R. Shalizi, and M. E. J. Newman. 2009. Power-law distributions in empirical data. *SIAM Review*, vol. 51, pp. 661–703. 

Urzúa, C. M. 2000. A simple and efficient test for Zipf´s law. *Economics Letters*, vol. 66, pp. 257-260.

Urzúa, C. M. 2020. A simple test for power-law behavior. *Stata Journal*, vol. 20, no. 3, pp. 604-612.

