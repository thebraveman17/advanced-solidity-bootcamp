// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract Callvalue {
    function getCallvalue() external payable returns (uint256) {
        assembly {
            mstore(0x80, callvalue())
            return(0x80, 0x20)
        }
    }
}