// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Storage} from "./simpStore.sol";

contract StorageFactory {
    Storage[] public listOfStorageContracts;

    function createStorageContract() public {
        Storage StorageContractVariable = new Storage();
        listOfStorageContracts.push(StorageContractVariable);
    }

    function sfStore(
        uint256 _StorageIndex,
        uint256 _StorageNumber
    ) public {
        listOfStorageContracts[_StorageIndex].store(
            _StorageNumber
        );
    }

    function sfGet(uint256 _StorageIndex) public view returns (uint256) {
        return listOfStorageContracts[_StorageIndex].retrieve();
    }
}