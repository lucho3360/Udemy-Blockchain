// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.17;

contract ExamplaeWrapAround {

     uint8 public myUint8 = 255; 

    function decrement() public {
        myUint8--;
    }

    function increment() public {
        myUint8++;
    }

    function uncheckedIncrement() public {
        unchecked {
            myUint8++;   
        }
    }
}