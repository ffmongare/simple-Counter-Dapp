// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleCounter {
    uint256 private counter;

    event CounterIncreased(uint256 newValue);
    event CounterDecreased(uint256 newValue);

    constructor() {
        counter = 0;
    }

    function increase() public {
        counter++;
        emit CounterIncreased(counter);
    }

    function decrease() public {
        require(counter > 0, "Counter cannot be decreased below zero");
        counter--;
        emit CounterDecreased(counter);
    }

    function getCounter() public view returns (uint256) {
        return counter;
    }
}
