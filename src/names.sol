// SPDX-License-Identifier: AGPL3+
pragma solidity ^0.8.6;

contract Names {
    mapping (bytes32 => address) public names;

    function register(bytes32 hash) external payable {
        require(msg.value >= 0.1 ether,    "insufficient fee");
        require(names[hash] != address(0), "name already registered");
        require(msg.sender != address(0),  "zero address cannot own names");
        names[hash] = msg.sender;
    }
}
