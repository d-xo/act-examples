// SPDX-License-Identifier: AGPL3
pragma solidity ^0.8.6;

contract Names {
  bytes32 hash;

  function register(bytes32 _hash) payable external {
    require(msg.value >= 0.1 ether, "names/fee-not-provided");
    hash = _hash;
  }
}

