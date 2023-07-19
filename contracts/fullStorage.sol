// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;
import "./storage.sol";
contract FullStorage is SimpleStorage{
    SimpleStorage[] public arr;
    SimpleStorage ob = new SimpleStorage();
function normalStorage()public{
    arr.push(ob);
}
function createSimpleStorageContract()public {
    SimpleStorage smtp = new SimpleStorage();
    arr.push(smtp);
}
function sfs_set(uint256 index, uint256 favnos)public{
    SimpleStorage sobj = SimpleStorage(address(arr[index]));
    sobj.store(favnos);
}
function sfs_view(uint256 index) public view returns(uint256){
        SimpleStorage sobj = SimpleStorage(address(arr[index]));
        return sobj.retrieve();

}
}