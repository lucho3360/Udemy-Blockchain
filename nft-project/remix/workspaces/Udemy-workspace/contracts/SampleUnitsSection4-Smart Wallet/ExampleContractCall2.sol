// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.17;

contract ContractOne {
    mapping(address => uint) public addressBalances;

    function deposit() public payable {
        addressBalances[msg.sender] += msg.value;
    }

    receive() external payable {
        deposit();
    }
}


contract ContractTwo {
    receive() external payable {}

    function depositOnContractOne(address _contractOne) public payable {
        // Low level call - version 2
        //  when you know who name function to call
        (bool success, ) = _contractOne.call{value:10, gas:100000}("");
        require(success);
    }
}