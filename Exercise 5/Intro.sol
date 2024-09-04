// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract Intro {
    /// @notice This function instantiates a stack variable with the value 'mol', stores it in memory, and returns it
    function intro() public pure returns (uint16) {
        uint256 mol = 420;

        assembly {
            let myVariable := mol
            mstore(mload(0x40), myVariable)
            mstore(0x40, 0xa0)
            return(0x80, 0x20)
        }
    }
}