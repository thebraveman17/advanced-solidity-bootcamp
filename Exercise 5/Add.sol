// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract Add {
    /// @notice This function stores a memory variable in between two assembly blocks and returns it
    function addAssembly(uint256 x, uint256 y) public pure returns (uint256) {
        assembly {
            let result := add(x, y)
            mstore(mload(0x40), result)
            mstore(0x40, 0xa0) // Update the free memory pointer
        }

        assembly {
            return(0x80, 0x20)
        }
    }
}