// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract Gas {

    function gasPrice() public view returns(uint){
        return tx.gasprice;
    }
    
    uint public i =0;
    
    function forever() public {
        while(true){
            i += 1;
        }
    }
    
}