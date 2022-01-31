// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//  custom errors are gas efficient that returing a string message
error Unauthorized(address caller);

function helper(uint256 x) view returns (uint256) {
    return x + 1;
}

contract CustomError {
    address payable owner = payable(msg.sender);

    function withdraw() public {
        if (msg.sender != owner) {
            revert Unauthorized(msg.sender);
        }
        owner.transfer(address(this).balance);
    }
}
