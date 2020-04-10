__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 14, Exercise 3

Work through the example quantum program at https://qiskit.org/documentation/tutorials/fundamentals/1_getting_started_with_qiskit.html. This example creates a quantum circuit containing three qubits that implements a **Greenberger–Horne–Zeilinger (GHZ)** state. The GHZ state exhibits key properties of quantum entanglement. Execute the code in a simulation environment on your computer.

# Answer
1. Start an Anaconda prompt console. Type *anaconda* in the Windows search box and click on **Anaconda prompt** when it appears in the search list. A console window will appear.

1. Enter the *qiskitenv* environment with this command:
```
conda activate qiskitenv
```

3. Enter the following commands at the Anaconda prompt:
```
python
import numpy as np
from qiskit import *
```

4. Create a quantum circuit containing a three-qubit GHZ state and add measurements for each qubit:
```
circ = QuantumCircuit(3)
# Add an H gate to qubit 0, creating superposition
circ.h(0)
# Add a CX (CNOT) gate. Qubit 0 is control and qubit 1 is target
circ.cx(0,1)
# Add a CX (CNOT) gate. Qubit 0 is control and qubit 2 is target
circ.cx(0,2)

# Add a measurement to each of the qubits
meas = QuantumCircuit(3, 3)
meas.barrier(range(3))
meas.measure(range(3),range(3))

# Combine the two circuits
qc = circ + meas
```

5. Display the circuit onscreen:
```
qc.draw()
```

 The output of this command should appear as follows:
```
>>> qc.draw()
        ┌───┐           ░ ┌─┐
q_0: |0>┤ H ├──■────■───░─┤M├──────
        └───┘┌─┴─┐  │   ░ └╥┘┌─┐
q_1: |0>─────┤ X ├──┼───░──╫─┤M├───
             └───┘┌─┴─┐ ░  ║ └╥┘┌─┐
q_2: |0>──────────┤ X ├─░──╫──╫─┤M├
                  └───┘ ░  ║  ║ └╥┘
 c_0: 0 ═══════════════════╩══╬══╬═
                              ║  ║
 c_1: 0 ══════════════════════╩══╬═
                                 ║
 c_2: 0 ═════════════════════════╩═

>>>
```

6. Run the circuit on your computer using the *qasm_simulator* simulator. The *shots* parameter provides a count of the number of times the circuit will be executed to collect statistical results:
```
backend_sim = Aer.get_backend('qasm_simulator')
job_sim = execute(qc, backend_sim, shots=1024)

```

7. Retrieve and display the count of the number of times each bit pattern resulted from a simulation run:
```
result_sim = job_sim.result()
counts_sim = result_sim.get_counts(qc)
counts_sim
```

You should see results similar (but not identical) to these:
```
>>> counts_sim
{'000': 527, '111': 497}
>>>
```
