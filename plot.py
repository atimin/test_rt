#!/usr/bin/env python

import matplotlib.pyplot as plt
import sys

fig = plt.figure()

for path in sys.argv[1:]:
    f = open(path, 'r')
    data = [ float(x) for x in f.readlines() ]
    plt.plot(xrange(1000), data, label=path)


plt.legend()
plt.show()
