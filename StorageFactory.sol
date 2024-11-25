// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";
// import "./SimpleStorage.sol";   //copy paste contact into this contract dont use it default


contract StorageFactory {

    // uint256 public favoriteNumber
    // type visibility name
    SimpleStorage[] public  listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        // How does the storage factory know what simple storage looks like?
        SimpleStorage simpleStorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }


}
