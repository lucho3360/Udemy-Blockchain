// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.17;

contract SampleUnits {
    modifier betweenOneAndTwoEth() {
        require(msg.value >= 1 ether && msg.value <= 2e18); 
        _;
    }

    uint runUntilTimestamp;
    uint startTimestamp;

    constructor(uint startInDays) {
        startInDays = block.timestamp + (startInDays*24*60*60);
        runUntilTimestamp = startTimestamp + (7 days);
    }

}