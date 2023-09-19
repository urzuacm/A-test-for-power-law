
# Importar los siguientes modulos: 
import numpy as np
from scipy import special
from scipy.special import digamma
from scipy.special import polygamma
import scipy.stats as stats
import pandas as pd

def pwlaw(x,mu):
  n = len(x)
  t = x/mu
  u = np.log(t-1)
  alpha= 1/np.mean(np.log(t))
  d1= n*alpha / mu - (alpha+1) * np.sum(1/x)
  d2 = -n+alpha * np.sum(u) - (alpha+1) * np.sum(u / t)
  d = np.array([d1, d2, 0])
  p = digamma(alpha)-digamma(1)-1
  q = polygamma(1, alpha) + polygamma (1,1)
  i1 = alpha/(mu**2 * (alpha+2))
  i2 = -(alpha*p+1)/(mu*(alpha+2))
  i3 = -1/(mu*(alpha+1))
  j2 = (alpha*(p**2+q)+2*(p+1))/(alpha+2)
  j3 = p / (alpha+1)
  k3 = 1/(alpha**2)
  h = np.array([[i1, i2, i3],
               [i2, j2, j3],
               [i3, j3, k3]])
  return np.dot(np.transpose(d), np.linalg.solve(h,d))/n

'''
x = ((1 - np.random.uniform(size=10**5)) ** (-1/2))
mu = 1
spw = (SPW(x,mu))
print (spw)
p_value = 1 - stats.chi2.cdf (spw, df=2)
print (p_value)
'''
#x = np.array(pd.read_excel('1M.xlsx', nrows = 200))
#mu = 1
#spw = (pwlaw(x,mu))
#print (spw)
#p_value = 1 - stats.chi2.cdf (spw, df=2)
#print (p_value)


