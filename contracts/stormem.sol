// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Diff{
    string[] public str = ["abc", "def", "ghi"];

    function mem_store() public view {
        string[] memory s1= str;
        s1[0] = "xyz";
    }
    function storage_store() public{
        string[] storage s1=str;
        s1[0] = "haha";
    }
}