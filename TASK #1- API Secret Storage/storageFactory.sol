//SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

import "./simpleStorage.sol";

contract storageFactory{

    SecretStorage[] public contractArray;

    function createSecretStorage() public{
        SecretStorage secretStorage=new SecretStorage();
        contractArray.push(secretStorage);
    }

    function storeSecretAPI(uint256 _index,uint256 _secretAPI) public{
        SecretStorage secStore= SecretStorage(address(contractArray[_index]));
        secStore.storeSecret(_secretAPI);
    }

    function getSecretAPI(uint256 _index) public view returns(uint256){
        SecretStorage secStore=SecretStorage(address(contractArray[_index]));
        return secStore.retrive();
    }
}