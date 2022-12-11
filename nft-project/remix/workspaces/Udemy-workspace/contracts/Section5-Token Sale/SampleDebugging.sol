// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.17;

contract MyContract {
    uint public myuint = 123;

    function setMyUint(uint _newUint) public {
        myuint = _newUint;
    }
}