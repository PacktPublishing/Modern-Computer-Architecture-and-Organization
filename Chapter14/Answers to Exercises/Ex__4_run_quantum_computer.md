__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 14, Exercise 4

Execute the code from [Exercise 3](Ex__3_run_quantum_local.md) on an IBM quantum computer.

# Answer
1. Repeat steps 1-5 from [Exercise 3](Ex__3_run_quantum_local.md) to create the quantum circuit.

1. Import you IBMQ account information and list the available quantum computing providers:
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

6. Retrieve and display the count of the number of times each bit pattern resulted from a quantum computer run:
```
counts_exp = result_exp.get_counts(qc)
counts_exp
```

Approximately 50% of the time the output bit string for this circuit should be 000 and the other 50% of the time it should be 111. However, these systems are **noisy, intermediate-scale quantum (NISQ)** computers. You should see results similar (but not identical) to these:
```
>>> counts_exp
{'000': 459, '010': 28, '011': 35, '110': 17, '111': 428, '101': 23, '100': 22, '001': 12}
>>>
```
