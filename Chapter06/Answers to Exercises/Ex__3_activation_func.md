__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 6, Exercise 3
The hyperbolic tangent is often used as an activation function in ANNs. The hyperbolic tangent function is defined as follows:

![Activation function](src/Ex__3_activation_func.png)

Given a neuron with inputs from three preceding neurons as depicted in *Figure 6.4*, compute the neuron’s output with the hyperbolic tangent as the activation function F(x) using the following preceding neuron outputs and path weights:

Neuron | Neuron output | Weight
------ | ------------- | ------
N<sub>1</sub> | 0.6  | 0.4
N<sub>2</sub> | -0.3 | 0.8
N<sub>3</sub> | 0.5  | -0.2

# Answer
See the python file [Ex__3_activation_func.py](src/Ex__3_activation_func.py) for the code.

To run the code, assuming **python** is installed and is in your path, execute the command **python Ex__3_activation_func.py**

This is the output produced by the program:
```
C:\>Ex__3_activation_func.py
Neuron output = -0.099668
```