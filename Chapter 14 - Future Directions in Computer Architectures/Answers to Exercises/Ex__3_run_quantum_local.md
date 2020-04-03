__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 14, Exercise 3

Work through the example quantum program at https://qiskit.org/documentation/tutorials/fundamentals/1_getting_started_with_qiskit.html. This example creates a quantum circuit containing three qubits that implements a **Greenberger–Horne–Zeilinger (GHZ)** state. The GHZ state exhibits key properties of quantum entanglement. Execute the code in a simulation environment on your computer.

# Answer
1. Start an Anaconda prompt console. Type *anaconda* in the Windows search box and click on **Anaconda prompt** when it appears in the search list. A console window will appear.

1. Return to the *qiskitenv* environment with this command:
```
conda activate qiskitenv
```

3. Enter the following commands at the Anaconda prompt:
```
python
import numpy as np
from qiskit import *
```

4. Create a quantum circuit containg a three-qubit GHZ state:
```
circ = QuantumCircuit(3)
# Add an H gate to qubit 0, creating superposition
circ.h(0)
# Add a CX (CNOT) gate. Qubit 0 is control and qubit 1 is target
circ.cx(0,1)
# Add a CX (CNOT) gate. Qubit 0 is control and qubit 2 is target
circ.cx(0,2)
```

5. Display the circuit onscreen:
```
circ.draw()
```

The output of this command should appear as follows:
```
>>> circ.draw()
        ┌───┐
q_0: |0>┤ H ├──■────■──
        └───┘┌─┴─┐  │
q_1: |0>─────┤ X ├──┼──
             └───┘┌─┴─┐
q_2: |0>──────────┤ X ├
                  └───┘
>>>
```

6. Run the circuit on your computer using the statevector simulator:
```
from qiskit import Aer
backend = Aer.get_backend('statevector_simulator')
job = execute(circ, backend)

```

7. Retrieve and display the output statevector from the simulation run:
```
result = job.result()
>>> outputstate = result.get_statevector(circ, decimals=6)
>>> outputstate
array([0.707107+0.j, 0.      +0.j, 0.      +0.j, 0.      +0.j,
       0.      +0.j, 0.      +0.j, 0.      +0.j, 0.707107+0.j])
>>>
```