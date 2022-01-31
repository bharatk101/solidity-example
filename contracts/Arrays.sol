// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.4 <0.9.0;

contract myContract{
    
    uint[] public array1D = [1,2,3];
    string[] public stringarray = ['apple', 'pineapple', 'jackfruit'];
    uint[][] public array2d = [[1,2,3], [4,5,6]];
    uint[] public myArray;
    
    function addValue(uint _value) public {
        myArray.push(_value);
    }
    
    function getLength() public view returns (uint) {
        return myArray.length;
    }
    
    
}