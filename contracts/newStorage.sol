// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

import "./storage.sol";

contract CCC is SimpleStorage{
    SimpleStorage[] public arr;

function set_contract() public{
    SimpleStorage obj = new SimpleStorage();
    arr.push(obj);
}
function get_contract(uint256 index,uint256 _fav) public {
        SimpleStorage obj =  SimpleStorage(address(arr[index]));
        obj.store(_fav);
}
function retreive_con( uint256 index) public view returns(uint256){
            SimpleStorage obj =  SimpleStorage(address(arr[index]));
            return obj.retrieve();
}
}
//contracts[0,1,2]