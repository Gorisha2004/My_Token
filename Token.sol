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
