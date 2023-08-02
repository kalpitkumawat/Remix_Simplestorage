// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // Stating the version

contract Simplestorage{
    // Basic Types:Boolean , uint, int , bytes , address ,string
    // bool isinteresting = false;
    // uint256 favnumber=69; 
    // int256 favnumber2=-69;
    // string favintext="sixnine";
    // address myaddress=0x5ce7c6b7F6F2D67498C87E059C9aF41AB7448366;
    // uint256[] array;
    uint256  myfavnumber; // default to zero
    struct person{
        uint256 favnumber;
        string name;

    }
    person public myfriend = person( 9 , "kptk");
    // Suppose there are many people then it might get tedious so we create a list of type 
    // person
    person[] public listofpeople; // 0
    //     person public myfriend= person({ favnumber:0 ; name:"Kptk"});
    //     person public myfriend= person({ favnumber:0 ; name:"Kptk"});
    //     person public myfriend= person({ favnumber:0 ; name:"Kptk"});

    // To search for a person in the list of people we require mapping, it basically works like a dictionary
        mapping ( string => uint256 ) public nameToFavNumber;

    // Calldata ,  Memory , storage
    // Cannot modify the name after declaring name as calldata, specicfy as memory if you want to modify it .
    function addpeople( string memory _name , uint256 number) public {
        // _name="kranytime";
        listofpeople.push( person(  number , _name));
        nameToFavNumber[_name]=number;
    }
    function store(uint256 _myfavnumber) public virtual  {
        myfavnumber = _myfavnumber;
        retrieve();
    }
    function retrieve() public view returns(uint256){
     // myfavnumber = myfavnumber + 1 // You cannot modify with view.
         return myfavnumber;
    }
}
contract Simplestorage2{}
contract Simplestorage3{}
