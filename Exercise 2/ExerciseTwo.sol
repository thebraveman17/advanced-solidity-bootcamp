// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

/// @title This is the solution for Exercise 2
/// @author Uroš Ognjenović
/// @notice The goal is to delete items (one at a time) from a dynamic array without leaving gaps in the array, and to do this in a gas efficient manner.
contract ExerciseTwo {
    uint256[] private s_numbers;

    /// @param numbers The array of numbers to be added
    function addNumbers(uint256[] calldata numbers) external {
        s_numbers = numbers;
    }

    /// @param index The index of the number to be deleted
    function deleteNumber(uint256 index) external {
        s_numbers[index] = s_numbers[s_numbers.length - 1];
        s_numbers.pop();
    }

    /// @notice Returns the array of numbers
    function getNumbers() external view returns (uint256[] memory) {
        return s_numbers;
    }
}
