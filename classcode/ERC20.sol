//SPDX-License-Identifier:MIT;

pragma solidity 0.8.10;

import"@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import"@openzeppelin/contracts/token/ERC20/extensions/ERC20Snapshot.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token is ERC20,ERC20Burnable,ERC20Snapshot,Ownable{

    constructor(string memory _name, string memory _symbol ,uint256 totalSupply ) ERC20(_name,_symbol){
        _mint(msg.sender,totalSupply);

    }
    function snapshot() public{
        _snapshot();
    }
    function _beforeTokenTransfer(address from,address to,uint256 amount) internal override(ERC20,ERC20Snapshot){
        super._beforeTokenTransfer(from,to,amount);
    }
    }
