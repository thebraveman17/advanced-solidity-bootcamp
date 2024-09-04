// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract SubOverflow {
    /// @notice This function returns 'x - y' when x > y, otherwise it reverts
    function subtract(uint256 x, uint256 y) public pure returns (uint256) {
        assembly {
            if lt(x, y) { revert(0, 0) }
            let result := sub(x, y)
            mstore(mload(0x40), result)
            mstore(0x40, 0xa0) // Update the free memory pointer
            return(0x80, 0x20)
        }
    }
}