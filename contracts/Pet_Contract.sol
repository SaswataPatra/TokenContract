// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

// 1. Creating a new pet contract
//0x0FA11a8EAe0bd9DD2b985740141A9e5f6601E2EE
contract Pet_Contract{

    // 2. Declaring our smart contract state variables
    string public petName;
    string public petOwner;
    string public petAge;

    // 3. Creating a set pet function
   function setPet( string memory newPetName,string memory newPetOwner,string memory newPetAge) public {
        petName = newPetName;
        petOwner = newPetOwner;
        petAge = newPetAge;
    }

    // 4. Creating a fetch pet function
    function getPet() public view returns (string memory, string memory, string memory){
        return (petAge, petName, petOwner);
    }
}
