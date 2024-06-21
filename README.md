**MyToken** 
This Solidity program is a simple program that demonstrates how one can create their own token in blockchain. Token would have token name, token abbreviation, the total supply of token.

**Description**
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has three public variables, two functions mint and burn, both of them taking two arguments: value and address. The mint function increases the total supply by the value passed and increases the balance of the address by that value. On the other hand, burn function does the opposite of mint function, i.e., It deduct the value from the total supply and from the balance of the address.

**Getting Started**
Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., token.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyToken {

    string public tokenName = "MyFirstToken";    //public variables
    string public tokenAbbrv = "MFT";
     uint public totalSupply = 0;

     mapping (address => uint) public balances;     //mapping variable

     function mint(address _a, uint value) external returns (uint, uint){         //mint function 
        return (totalSupply += value, balances[_a] += value );
     }
   

   function burn(address _a, uint value) external returns (uint, uint) {
    if (balances[_a] >= value){
    return (totalSupply -= value, balances[_a] -= value );
    }
    else{
        return (totalSupply, balances[_a]);
    }
   }

}
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.7" (or another compatible version), and then click on the "Compile token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint function and burn function. You can also interact with the varibles. Once you pass the values in the function and transact, you can check the updated values in the variables.

