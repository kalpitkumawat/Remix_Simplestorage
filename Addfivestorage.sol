// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {Simplestorage} from "./SimpleStorage.sol";
contract addfivestorage is Simplestorage {
    // function sayhello() public pure returns( string memory)
    // {
    //     return "Have a good day dear";
    // }
    // Now if we wanted to modify the store fn of simple storage
    // +99
    // Over ride
    // Virtual override
    function store( uint256 number ) public  override  {
            myfavnumber= number +5; 
    }
}
