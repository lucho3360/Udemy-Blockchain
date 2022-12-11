// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.17;

contract SampleFallback {
    uint public lastValueSent;
    string public lastFunctionCalled;

    receive() external payable {
        lastFunctionCalled = 'receive';
        lastValueSent = msg.value;
    }

    fallback() external {
        lastValueSent = msg.sender;
        lastFunctionCalled = 'fallback';
    }
}