// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.6;

contract Simple {
    uint val;

    function set(uint x) external payable returns (uint) {
        require(x > 100);
        if (x == 2000) {
          val = x + 1;
        } else {
          val = x;
        }
        return x;
    }
}

