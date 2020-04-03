__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 14, Exercise 4

Execute the code from [Exercise 3](Ex__3_run_quantum_local.md) on an IBM quantum computer.

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

4. Create a quantum circuit containg a three-qubit GHZ state and add measurements for each qubit:
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

1. Import you IBMQ account information and list quantum computing providers:
```
from qiskit import IBMQ
IBMQ.load_account()
provider = IBMQ.get_provider(group='open')
provider.backends()
```

3. If you visit the IBM Quantum Experience home page at https://quantum-computing.ibm.com/, you will be able to see the length of the job queues for the available quantum computers. Select a system with sufficient qubits for your circuit and a short job queue. This example assumes the *ibmq_essex* computer is your choice.

1. Add your job to the queue and monitor its status with these commands. The *shots* parameter provides a count of the number of times the circuit will be executed to collect statistical results:
```
backend = provider.get_backend('ibmq_essex')
from qiskit.tools.monitor import job_monitor
job_exp = execute(qc, backend=backend, shots=1024)
job_monitor(job_exp)
```

After the run completes you will see the line:
```
Job Status: job has successfully run
```

5. After the job completes, retrieve the results with this command:
```
result_exp = job_exp.result()
```

6. Approximately 50% of the time the output bit string for this circuit should be 000 and the other 50% of the time it should be 111. However, these systems are **noisy, intermediate-scale quantum (NISQ)** computers. Display the counts for each of the eight possible output bit patterns with the following command:
```
counts_exp = result_exp.get_counts(qc)
counts_exp
```

You should see results similar (but not identical) to these:
```
>>> counts_exp
{'000': 459, '010': 28, '011': 35, '110': 17, '111': 428, '101': 23, '100': 22, '001': 12}
>>>
```
