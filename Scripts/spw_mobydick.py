# How to use SPW as a module 
# Rememeber the arguments of the spw function: **SPW(x,mu)**

import scipy.stats as stats
import power_law as pwlaw
import pandas as pd
import numpy as np


x = np.array(pd.read_excel('1M.xlsx', header = None))
mu = 6
print("pwlaw Result:", pwlaw.pwlaw(x, mu))
print("P-Value:", 1 - stats.chi2.cdf(pwlaw.pwlaw(x, mu), df=2))

