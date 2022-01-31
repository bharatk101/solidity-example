// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Function {

    // returns multiple values
    function returnMany() public pure returns(uint, bool, uint){
        return (1, true, 2);
    }
    
    // returns values can be named
    function names() public pure returns(uint x, bool a, uint y){
        return (2, true, 5);
    }
        
    // Return values can be assigned to their name.
    // In this case the return statement can be omitted.
    function omitReturn() public pure returns(uint x, bool a, uint y){
        x = 1;
        a = true;
        y = 9;
    }
    
    //Use destructing assignment when calling another
    // function that returns multiple values.
    function destructing() public pure returns(uint, bool, uint, uint, uint){
        (uint i, bool b, uint j) = returnMany();
        
        // values can be left constructor
        (uint k, ,uint x) = (4,5,6);
        
        return (i, b, j, k, x);
    }
    
     // Cannot use map for neither input nor output
    //  cannot use multi dim dynamic size array for input or output

    // Can use array for input
    function arrayInput(uint[] memory _arr) public {}

    // Can use array for output
    uint[] public arr;

    function arrayOutput() public view returns (uint[] memory) {
        return arr;
    }

}