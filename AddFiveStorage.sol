// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

//Inheritence with SimpleStorage
contract AddFiveStorage is SimpleStorage{
    
    //overrides => virtual or override keywords
    /*
        You need to specificy that function which will be open to
        override as virtual after that you can use override at your method
        for overriding the function with the same name
    */

    function store(uint256 _newNumber) public override {
        favoriteNumber = _newNumber + 5;
    }
}