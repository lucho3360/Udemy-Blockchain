// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.17;

contract ContractOne {
    mapping(address => uint) public addressBalances;

    function deposit() public payable {
        addressBalances[msg.sender] += msg.value;
    }

    receive() external payable {}
}


contract ContractTwo {
    receive() external payable {}

    function depositOnContractOne(address _contractOne) public payable {
        // you can not identify by external way which is the contract to call
        // ContractOne one = ContractOne(_contractOne);
        // one.deposit{value:10, gas:100000}();

        // the best way is call it that
        // Low level althoght spend more gas than above example
        bytes memory payload = abi.encodeWithSignature("deposit()");
        (bool success, ) = _contractOne.call{value:10, gas:100000}(payload);
        require(success);
    }
}