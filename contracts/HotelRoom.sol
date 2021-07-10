// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.4 <0.9.0;

contract Hotel{
    
    address payable public owner;
    enum Status {Available, Occupied}
    Status currentStatus;
    
    event Occupy(address _occupant, uint _value);
    
    constructor() {
        currentStatus = Status.Available;
        owner = payable(msg.sender);
    }
    
    modifier ifVaccant{
        require(currentStatus == Status.Available, "Currently Occupied");
        _;
    }
    
    modifier checkValue{
        require(msg.value == 2 ether, "Insufficent Ether" );
        _;
    }
    
    receive() external payable ifVaccant checkValue{
        currentStatus = Status.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
    
    
    
}