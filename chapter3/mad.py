import numpy as np

# input data series
x = [1, 2, 3, 4, 5, 6]

# calculate median absolute deviation
mad = np.median(np.abs(x - np.median(x)))

# MAD of x is 1.5
print('MAD: {}'.format(mad))
