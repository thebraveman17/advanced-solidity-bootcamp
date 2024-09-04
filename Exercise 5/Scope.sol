// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract Scope {
    uint256 public s_count = 10;

    /// @notice This function modifies the state of the 'count' variable using assembly
    function increment(uint256 num) public {
        assembly {
            let x := sload(0)
            sstore(0, add(sload(0), num))
        }
    }
}