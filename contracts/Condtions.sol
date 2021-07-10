// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.4 <0.9.0;

contract myContract{
    
    uint[] myList = [1,2,3,4,5,6,7,8,9,10];
    address owner;
    
    constructor(){
        owner = msg.sender;
    }
    
    function filterList() public view returns(uint){
        uint count = 0;
        
        for(uint i =0; i<myList.length; i++){
            if(isEven(myList[i])){
                count++;
            }
        }
        return count;
    }
    
    function isEven(uint _number) public pure returns(bool){
        if(_number % 2 == 0){
            return true;
        } else {
            return false;
        }
    }
    
    function isOwner() public view returns(bool){
        return(owner==msg.sender);
    }
    
}