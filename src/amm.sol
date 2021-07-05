// SPDX-License-Identifier: AGPL3
pragma solidity ^0.8.6;
pragma experimental SMTChecker;

contract Amm {
  uint reserve0 = 1000;
  uint reserve1 = 1000;

  function swap0(uint256 amt) external {
    uint pre0 = reserve0;
    uint pre1 = reserve1;

    reserve0 = reserve0 + amt;
    reserve1 = (pre0 * reserve1) / reserve0;

    assert(pre0 * pre1 <= reserve0 * reserve1);
  }

  function swap1(uint256 amt) external {
    uint pre0 = reserve0;
    uint pre1 = reserve1;

    reserve1 = reserve1 + amt
    reserve0 = (reserve0 * pre1) / reserve1;

    assert(pre0 * pre1 <= reserve0 * reserve1);
  }
}
