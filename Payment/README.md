# Payment

Contains:

DynamicPrice.sol - The pay function allows payment in coin or token.
Pricing tiers can be set by the owner under "uint lst".
This function reads the "lst" and "lst" +1 index.
First index is the payment type, 0x01-coin and if it is an address field, it uses an ERC-20 contract.
Since it imported Hashes.sol, the lst can use EAA as a base.

Usage:
sstore(add(EAA, 0x01), 0x01) // this means it is using coin as a payment
sstore(add(EAA, 0x02), 0x0DE0B6B3A7640000) // payment amount is 1e18
sstore(add(EAA, 0x03), 0xdAC17F958D2ee523a2206206994597C13D831ec7) // this pay using USDT
sstore(add(EAA, 0x04), 0x0DE0B6B3A7640000) // payment amount is 1e18
sstore(add(EAA, 0x05), 0x00) // this is free
sstore(add(EAA, 0x06), 0x00) // can omit this actually

To call this function, "lst" have to be specific,
```
bytes32 lis;
assembly {
   lis := sload(add(EAA, 0x03));
}
_pay(lis, 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 1e18);
```