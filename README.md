# SavingsVault Smart Contract
## Overview
The SavingsVault is a simple Ethereum smart contract that allows users to deposit and withdraw Ether securely. Each user has an individual balance, ensuring that only the deposited amount can be withdrawn.
## Features
```deposit()```
Allows users to send Ether to the contract.

Ether is credited to the sender’s balance.

```withdraw()```
Users can withdraw their total deposited amount.

Ensures that users have sufficient balance before allowing withdrawal.

```getBalance()```
Returns the Ether balance of the caller.
## Security Considerations
* **Reentrancy Protection:** This contract does not implement reentrancy guards. Consider using the Checks-Effects-Interactions pattern or ReentrancyGuard modifier in production.

* **Visibility Restrictions:** The balances mapping is private, preventing external access.
## Contract Address
```0xfBECbd548B8BdA886BA45cA496C89C9227a51d4F```
