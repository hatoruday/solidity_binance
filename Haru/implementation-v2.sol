// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract hImplementV2 {
    address public implementation;
    uint public x;
    uint public y;

    function inc() external {
        y += 1;
    }

    function dec() external {
        y -= 1;
    }
}