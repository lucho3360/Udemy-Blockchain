// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.17;

// CHILD SMART CONTRACT]
contract Wallet {

    PaymentReceived public payment;

    function payContract() public payable {
        payment = new PaymentReceived(msg.sender, msg.value);
    }
}

contract PaymentReceived {
    address public from;
    uint public amount;

    constructor(address _from, uint _amount){
        from = _from;
        amount = _amount;
    }
}


// STRUCT CONTRACT
contract Wallet2 {
    struct PaymentReceivedStruct {
        address from;
        uint amount;
    }

    PaymentReceivedStruct public payment;

    function payContract() public payable {
        // payment = PaymentReceivedStruct(msg.sender, msg.value);
        // or
        payment.from = msg.sender;
        payment.amount = msg.value;
    }
}