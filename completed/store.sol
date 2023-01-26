//SPDX-License-Identifier:NONE
pragma solidity ^0.8.0;

/**
 * @title Storage
 * @dev Store & retreive value in a variable
 */
contract Storage {

    uint256 number;
    address owner;
    constructor()  {
        owner = msg.sender;
    }

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        require(owner == msg.sender,'caller must be owner');
        number = num;
    }


    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retreive() public view returns (uint256){
        return number;
    }
}
