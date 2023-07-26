// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract HARU is ERC20, Ownable, ERC20Burnable, Pausable {
    //1ETH = 1 * 10 ** 18
    constructor() ERC20("HARUPTOKEN", "HARPT") Ownable() ERC20Burnable() {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) external onlyOwner { //아무나 토큰을 찍을 수 없게 제안을 해야한다.
        _mint(to, amount);

    }
    uint8 private _decimals = 6;
    function decimals() public view override returns (uint8) {
        return _decimals; //storage 값에 담긴 변수를 읽어와서 쓰는거. hardcoding된 숫자를 리턴하면 pure를 써줘야함.
    }
    
    function pause() public override {
        
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal whenNotPaused override{
        super._beforeTokenTransfer(from, to, amount);
    }
}