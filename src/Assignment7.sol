// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract Assignment7 is ERC20 ,Ownable{
 
constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol)  Ownable(msg.sender){

}
     function mint(address to, uint256 amount) external onlyOwner  {
        _mint(to, amount);
    }
}
 