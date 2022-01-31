// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Our first contract is a faucet!
contract Unit {
    
    uint public oneEther = 1 ether;
    uint public oneWei = 1 wei;
    
    function testOneWei() public pure returns(bool){
        return 1 wei == 1;
        
    }
    
    function testOneEther() public pure returns(bool){
        return 1 ether == 1e18 wei;
        
    }
    
}