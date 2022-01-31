// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SafeMath {
    // throws an error, safeMath is enabled by default in sol - 0.8 
    function testUnderflow() public pure returns (uint256) {
        uint256 x = 0;
        x--;
        return x;
    }

    //  disables safeMath when you wrap it with unchecked
    function testUncheckedUndeflow() public pure returns (uint256) {
        uint256 x = 0;
        unchecked {
            x--;
        }
        return x;
    }
}



