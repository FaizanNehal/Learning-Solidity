//// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract faucet{
    receive() external payable{}

    function withdrawl(uint256 withdrawl_amount) public {
        require(withdrawl_amount<=100000000000000000);

        msg.sender.transfer(withdrawl_amount);
    }
}