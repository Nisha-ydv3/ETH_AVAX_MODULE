# ERROR HANDLING SMART CONTRACT
This is a simple Solidity smart contract called as ErrorHandling which will be demonstrating the basic error handling technique.

## PREREQUISITES
solidity ^0.8.17

## LICENSE
This project is licensed under MIT License.

## SMART CONTRACT DETAILS
### decreaseAmount(int amount)
It decreases the initAmount by specified amount before executing the operation. It checks if the input amount > 0 using assert statement.
If the amount > initAmount , it reverts the transaction with an error message.

### increaseAmount(int amount)
This function increases the initAmount by the specified amount.It uses a require statement to ensure that the input amount is greater than or equal to zero. If the amount is negative , the transaction is reverted with an error message.

### viewAmount() 
It is read-only function which allow user to view current value of initAmount.

## Usage
1.Install solidity ^0.8.17 and compile the smart contract using the solidity compiler.

2.Interact with the deployed smart contract using functions given.
