import numpy as np
from rms import rms

m, n = 4, 7

a = np.random.normal(size=(m, n))
b = np.random.normal(size=(m, n))

assert rms(a,b) == np.sqrt(np.sum((a - b)**2))
