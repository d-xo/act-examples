// SPDX-License-Identifier: AGPL3
pragma solidity ^0.8.6;

import {Names} from "./names.sol";
import {DSTest} from "ds-test/test.sol";

interface Hevm {
    function warp(uint256) external;
    function roll(uint256) external;
    function store(address,bytes32,bytes32) external;
    function sign(uint,bytes32) external returns (uint8,bytes32,bytes32);
    function addr(uint) external returns (address);
}

contract Test is DSTest {
    Names names = new Names();
    Hevm hevm = Hevm(HEVM_ADDRESS);

    function testCex() public {
        bytes memory data = hex"e1fa8e8400000000000000000000000000000000000000000000000000000000201000c0";
        (bool res, ) = address(names).call{value: 452538051974984075214845480494562268547030133639019586187001825308840042528}(data);
        assertTrue(res);
    }
}
