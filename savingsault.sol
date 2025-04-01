// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SavingsVault {
    mapping(address => uint) private balances;

    // Function to deposit Ether into the vault
    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    // Function to withdraw all Ether stored in the vault
    function withdraw() public {
        uint amount = balances[msg.sender];
        require(amount > 0, "No funds to withdraw");
        balances[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }

    // Function to check the balance of the caller
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }
}
