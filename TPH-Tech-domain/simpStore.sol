// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract Storage {
    uint256 myNumber;

    struct Person {
        uint256 pNumber;
        string pName;
    }
    // uint256[] public anArray;
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToNumber;

    function store(uint256 _pNumber) public virtual {
        myNumber = _pNumber;
    }

    function retrieve() public view returns (uint256) {
        return myNumber;
    }

    function addPerson(string memory _pName, uint256 _pNumber) public {
        listOfPeople.push(Person(_pNumber, _pName));
        nameToNumber[_pName] = _pNumber;
    }
}
