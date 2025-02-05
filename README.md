# Ownable Contract Ownership Transfer Bug

This repository demonstrates a common bug in Solidity's Ownable contracts: directly modifying the `owner` state variable instead of using an internal transfer function. This can lead to unexpected behavior and vulnerabilities, especially if the contract interacts with other smart contracts or external systems. 

## Bug Description
The bug lies in the `transferOwnership` function, which directly assigns the `newOwner` to the `owner` state variable. This bypasses any potential checks or side effects that an internal transfer function might have, such as emitting events or updating access control lists.

## Solution
The bug is resolved by introducing an internal function `_transferOwnership` that handles the state update and any related actions, ensuring better security and maintainability.