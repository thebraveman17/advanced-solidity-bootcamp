// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/// @notice This contract implements one function that uses Yul to add two numbers and store them at the next free memory location
contract Yul {
    function addNumbers() external pure {
        assembly {
            mstore(mload(0x40), add(0x07, 0x08))
        }
    }
}
