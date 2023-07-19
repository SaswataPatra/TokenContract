// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract pay{
    mapping(address => uint256) public walletTransfer;
    function fundMe() public payable {
        walletTransfer[msg.sender] +=msg.value;
    }
}
//0x7EF2e0048f5bAeDe046f6BF797943daF4ED8CB47
