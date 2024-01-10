# Security

Contains:

Check.sol - To check for suspension of the contract or user with multiple parameters options.
It is also to be used with ecrecover to validate the signature.
All the variables are set externally and is recommended to be used with Proxy.sol in my other repository.
Otherwise you can self import a function to be able to write into memory slots.

How to suspend:
```
function suspend(address adr) external {
    assembly {
        sstore(adr, 0x01)
    }
}
```

Calling isSuspend:
```
require(
    !isSuspend(
        0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    )
);
// or
require(
    !isSuspend(
        0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 
        0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
    )
);
```

Setting signer for isVRS:
```
sstore(APP, 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4)
```

Calling isVRS:
```
require(
    isVRS(
        1234567890,
        0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef,
        0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925,
        0x1b
    )
);
```