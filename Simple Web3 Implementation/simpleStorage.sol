// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SecretStorage{
    uint256 public secret;

    struct hacked{
        uint256 number;
        string name;
    }

    hacked[] public hackedNames;
    mapping(string=>uint256) public gettingNames;

    function storeSecret(uint256 _secret) public{
        secret=_secret;
    }

    function retrieve() public view returns(uint256){
        return secret;
    }

    function addPersion(string memory _name,uint256 _number) public{
        hackedNames.push(hacked({number:_number,name:_name}));
        gettingNames[_name]=_number;
    }
}