// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract FundMe{
    mapping(address => uint256) public addressToAmountFunded;
    // address payable user = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
    function fund() public payable {
        addressToAmountFunded[msg.sender] += msg.value;
    }
    function getBalanceSender() public view returns(uint){
        return msg.sender.balance;
    }
    function getBalanceReceiver() public view returns(uint){
        return address(this).balance;
    }
    // function sendEther() public{
    //     user.transfer(1 ether);
    // }
    
}