__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 14, Exercise 2

Create a free IBM Quantum Experience account at https://quantum-computing.ibm.com/. Locate your IBM Quantum Services API token at https://quantum-computing.ibm.com/account and install it into your local environment using the instructions at https://qiskit.org/documentation/install.html.

# Answer
1. Visit https://quantum-computing.ibm.com/. If you don't already have an account, click the [Create an IBMid account.](https://auth.quantum-computing.ibm.com/auth/idaas) link to get started.

1. Once you are logged in, click on the account icon at the top right (it looks like a little person).

1. Locate the **Copy token** button on the screen. Click it to copy your API token to the clipboard.

1. Return to the Anaconda prompt for the qiskitenv environment you created in [Exercise 1](Ex__1_install_qiskit.md).

1. Enter the following commands at the Anaconda prompt to set up your API token. You will need to replace *MY_TOKEN* with the token you copied to the clipboard in the earlier step:
```
python
import qiskit
from qiskit import IBMQ
IBMQ.save_account('MY_TOKEN')
```