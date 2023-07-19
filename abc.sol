pragma solidity >=0.7.0 <0.9.0;

contract SimpleStorage {
    //state change EVM
    //state variables
   uint256 anyNumber;
   struct ExampleStruct{
       uint256 anyNumber;
        string name;
        bool flag; 
   }
    //int[]
   //mapping(<datatype> => <data type>) <visibility> <variable name
   mapping(string=>uint256) public map;
   //<datatype>[] <visibility> <name>
   ExampleStruct[] public arr; //dynamic array same as pythons list
   //what is the one difference between dyanamic array and fixed length array
   function store(uint256 _nos) public{
       anyNumber = _nos;
   }
   function retreive()public view returns(uint256){
    //    return anyNumber*100;
    uint256 temp = anyNumber*100;
    return temp;
   }


//    function rtr2() public pure returns(uint256){
//        return anyNumber;
//    }
   function add(string memory Name, uint256 num, bool flg)public{
       arr.push(ExampleStruct(num,Name,flg));
       map[Name] = num;
   }
//    function addView() view public returns(ExampleStruct memory){
//        return ExampleStruct.name;
//    }

}
//CREATE A FUNCTION SET IN A VALUE 
//CREATE ANOTHER FUNCTION TO CHECK WHETHER IT IS A PALINDROME OR NOT
//RESULT FUNCTION --> VIEW ( TRUE/FALSE)
