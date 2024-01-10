// SPDX-License-Identifier: None
pragma solidity 0.8.0;

contract Random {

    function ran(uint max) public view returns (uint num) {
        assembly {
            mstore(0x00, timestamp())
            mstore(0x20, caller())
            num := add(mod(keccak256(0x00, 0x40), max), 0x01)
        }
    }

}