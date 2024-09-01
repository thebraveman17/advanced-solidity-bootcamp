// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/// @notice The Store contract after storage optimization
contract StoreAfter {
    struct payments {
        uint256 amount;
        uint256 initialAmount;
        uint256 finalAmount;
        address sender;
        uint8 paymentType;
        bool valid;
        bool checked;
        address receiver;
    }

    mapping(address => uint256) balances;
    uint256 public number;
    address admin;
    uint8 index;
    bool flag1;
    bool flag2;
    bool flag3;
    address admin2;
    payments[8] topPayments;

    constructor() {}

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
