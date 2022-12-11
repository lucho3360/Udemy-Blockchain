// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.17;

contract ExampleViewPure {

     uint public myStorageVariable; 

    function getMyStorageVariable() public view returns(uint) {
        return myStorageVariable;
    }

    function getAddition(uint a, uint b) public pure returns(uint) {
        return a+b;
    }

    function setMyStorageVariable(uint _newVar) public returns(uint) {
        myStorageVariable = _newVar;
        return myStorageVariable;
        // esto es muy mala idea, hay q tratar d hacer funciones q no devuevan variables. en todo caso un contract
    }
}