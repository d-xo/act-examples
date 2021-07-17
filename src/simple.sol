// SPDX-License-Identifier: AGPL3+
pragma solidity ^0.8.6;

contract Auth {
    mapping(address => bool) wards;

    modifier auth {
        require(wards[msg.sender], "unauthorised");
        _;
    }

    function rely(address usr) external auth {
        wards[usr] = true;
    }

    function deny(address usr) external auth {
        wards[usr] = false;
    }
}

