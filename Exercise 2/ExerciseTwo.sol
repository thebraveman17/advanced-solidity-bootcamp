// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract ExerciseTwo {
    uint256[] private s_numbers;

    function addNumbers(uint256[] calldata numbers) external {
        s_numbers = numbers;
    }

    function deleteNumber(uint256 index) external {
        s_numbers[index] = s_numbers[s_numbers.length - 1];
        s_numbers.pop();
    }

    function getNumbers() external view returns (uint256[] memory) {
        return s_numbers;
    }
}
