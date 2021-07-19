// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.4;

contract Auth {
    mapping (address => bool) public wards;

    modifier auth {
        require(wards[msg.sender], "auth/unauthorized");
        _;
    }

    function rely(address usr) external auth {
        wards[usr] = true;
    }

    function deny(address usr) external auth {
        wards[usr] = false;
    }
}
