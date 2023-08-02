// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Simplestorage} from "./SimpleStorage.sol";
contract StorageFactory{
    // type visibility name
    Simplestorage[] public listofSimplestoragecontracts;
    function createsimplestoragecontract() public {
        Simplestorage newsimplestoragecontract =new Simplestorage();
        listofSimplestoragecontracts.push(newsimplestoragecontract);
    }
    function sfstore( uint256 _simplestorageindex , uint256 _newsimplestoragenumber) public 
    {
        // Address
        // API - Application Binaray Interface
        Simplestorage mysimplestorage= listofSimplestoragecontracts[_simplestorageindex];
        mysimplestorage.store(_newsimplestoragenumber ); 
    }
    function sfget( uint256 _simplestorageindex) public view returns(uint256) {
        return listofSimplestoragecontracts[_simplestorageindex].retrieve();
    }
    
}
