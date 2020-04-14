#!/usr/bin/env python

"""Ex__3_activation_func.py: Answer to Ch 6 Ex 3."""

# Output produced by this program:
# Neuron output = -0.099668

import math

# Neuron signal and weight vectors
neuron = [0.6, -0.3,  0.5]
weight = [0.4,  0.8, -0.2]

sum = 0
for i in range(len(neuron)):
    sum = sum + neuron[i] * weight[i]

output = math.tanh(sum)

# Print the results
print('Neuron output = %8.6f' % output)
