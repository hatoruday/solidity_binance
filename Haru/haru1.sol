// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract HARU is ERC20, Ownable{
    //1ETH = 1 * 10 ** 18
    constructor() ERC20("HARUToken", "HART") Ownable() {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) external onlyOwner { //아무나 토큰을 찍을 수 없게 제안을 해야한다.
        _mint(to, amount);

    }
    uint8 private _decimals = 6;
    function decimals() public view override returns (uint8) {
        return _decimals; //storage 값에 담긴 변수를 읽어와서 쓰는거. hardcoding된 숫자를 리턴하면 pure를 써줘야함.
    }
}