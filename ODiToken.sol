// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ODiToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("ODi Token", "ODi") Ownable(msg.sender) {}

    function mintToken(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function mintToMySelf(uint256 _amount) public onlyOwner{
        mintToken(msg.sender, _amount);
    }

    function burnToken(uint256 amount) public {
        _burn(_msgSender(), amount);
    }

    function transferToken(address recipient, uint256 amount) public returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }
}
