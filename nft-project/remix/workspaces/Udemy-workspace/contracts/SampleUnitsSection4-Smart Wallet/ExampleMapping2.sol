// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.17;

contract ExampleMappingWithdrawals {

    mapping(address => uint) public balanceReceived;

    function sendMoney() public payable {
        balanceReceived[msg.sender] += msg.value;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdrawAllMoney(address payable _to) public {
        // _to.transfer(getBalance());
 }