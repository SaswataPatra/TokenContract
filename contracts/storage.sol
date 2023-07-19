// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract SimpleStorage{
    uint256 public favNum;
     struct People{
        uint256 favNumber;
        string name;
        bool flag;
    }

    People[] public people;
    mapping(string=>uint256) public map;
    function store(uint256 _fav)public{
        favNum = _fav;
        // uint256 test = 4;
    }
    function retrieve() public view returns(uint256){
        return favNum+100;
        // uint256 temp = favNum+100;
        // return temp;
        // favNum = favNum+100;

    }
    // function rtr2() public pure returns(uint256){
    //     return favNum;
    // }
    function addPerson(string memory Name, uint256 favnos, bool flg)public{
        people.push(People(favnos,Name,flg));
        map[Name] = favnos;
    }
}

