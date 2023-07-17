// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorHandling {
    uint256 initAmount = 5000;

    function decreaseAmount(uint256 amount) public returns (uint256) {
        assert(amount > 0);

        if (amount > initAmount) {
            revert("Amount should be less than initial amount");
        }

        initAmount -= amount;
        return initAmount;
    }

    function increaseAmount(uint256 amount) public returns (uint256) {
        require(amount >= 0, "Value should be greater than or equal to 0");
        initAmount += amount;
        return initAmount;
    }

    function viewAmount() public view returns (uint256) {
        return initAmount;
    }
}
