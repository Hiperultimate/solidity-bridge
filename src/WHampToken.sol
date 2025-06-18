// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract HampToken is ERC20, Ownable { 

    constructor(uint _initSupply) ERC20("Hamp", "HMP") Ownable(msg.sender){

    }

    function mint(address account , uint amount) public onlyOwner {
        _mint(account, amount);
    }

    function burn(address account , uint amount) public onlyOwner {
        _burn(account, amount);
    }

}