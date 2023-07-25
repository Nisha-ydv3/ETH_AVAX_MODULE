// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorHandling {
    int initAmount = 5000;

    function decreaseAmount(int amount) public returns (int) {
        assert(amount > 10);

        if (amount > initAmount) {
            revert("Amount should be less than initial amount");
        }

        initAmount -= amount;
        return initAmount;
    }

    function increaseAmount(int amount) public returns (int) {
        require(amount >= 0, "Value should be greater than or equal to 0");
        initAmount += amount;
        return initAmount;
    }

    function viewAmount() public view returns (int) {
        return initAmount;
    }
}
