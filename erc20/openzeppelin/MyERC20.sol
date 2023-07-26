// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract HARU is ERC20{
    //1ETH = 1 * 10 ** 18
    constructor() ERC20("HARUToken", "HART") {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }
}