// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.4 <0.9.0;

contract MyContract{
    
    uint public count = 0;
    string public name = "Bojack";
    bytes32 public name_ = "Todd";
    int public a = -1;
    uint public b = 10;
    uint232 public j = 99;
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
    struct myStruct{
        string name;
        uint age;
    }
    
    myStruct public ms = myStruct("Bo", 23);
    
}