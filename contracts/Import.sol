// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Unauthorized, helper as addF} from "./CustomError.sol";

function helper(uint256 x) view returns (uint256) {
    return x * 2;
}

contract Import {}
