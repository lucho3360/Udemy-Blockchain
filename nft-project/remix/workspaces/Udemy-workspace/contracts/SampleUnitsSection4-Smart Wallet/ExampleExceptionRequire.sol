// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.17;

contract ExampleExceptionRequire {

    mapping(address => uint) public balanceReceived;

    function receiveMoney() public payable {
        balanceReceived[msg.sender] = msg.value;
    }

    function withdrawMoney(address payable _to, uint _amount) public {
        require(_amount <= balanceReceived[msg.sender], "Not enough funds, aborting!!");
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }

}