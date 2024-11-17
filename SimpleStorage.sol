// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //stating solidity version

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    //uint & int special because you can tell how many bytes you can use
    /*
        bool hasFavoriteNumber = false;
        uint256 favoriteNumber = 88;
        string favoriteNumberInText = "eighty-eight";
        int256 favoriteInt = -88;
        address myAddress = 0x91b7D7b1772cAD206d03A5CF10e94de3209987a5;
        bytes32 favoriteBytes32 = "cat";
    */
    uint256 public favoriteNumber; //0

    uint256[] listOfFavoriteNumbers;

    // type is struct
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    //dynamic array
    Person[] public listOfPeople; // []


    mapping(string => uint256) public nameToFavoriteNumber;

    /*
        Person public pat = Person({favoriteNumber:7, name: "Pat"}); 
        Person public mariah = Person({favoriteNumber:17, name: "Mariah"}); 
        Person public jon = Person({favoriteNumber:19, name: "Jon"}); 
    */

    function store (uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view, pure dont spend gas
    // if another function which spends gas this function calls
    // this new function spends gas
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    /*
        public
        private
        external
        internal
        sol default is internal
    */

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        /*
            Person memory newPerson = Person(_favoriteNumber, _name);
            listOfPeople.push(newPerson);
            OR
        */
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    //check EVM memory storage
    /**
        calldata, memory, storage
        calldata and memory: means this variable is only be stored  at the related function
        it will not be interacted again. So it's temporary vaiables.

        calldata and memory difference is calldata can not be modified
        memory can be modified
        storage 

    */
    
}