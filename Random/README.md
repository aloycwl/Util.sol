# Random.sol

Contains:

Random.sol - There are many versions of random for Solidity available.
However we all know there is no real random as everything here are calculated.
For every case, the timestamp and/or running index is used with Keccak to hashes.
It will be the same for every scenario, therefore it is calculated random and not chaotic random.

For this case, I am using block.timestamp and the msg.sender address as the Keccak.
Meaning to say if the same user call it within the same block he will have the same number.
I do not want to add a running index number as it requires to invoke memory and cost gas fee.
Unless otherwise needed, another function with running number can be added.

Usage:
```
uint var = ran(0x0c);
// This will return a number between 1 - 12
```