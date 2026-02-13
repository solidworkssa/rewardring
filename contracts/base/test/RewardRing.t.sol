// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "forge-std/Test.sol";
import "../src/RewardRing.sol";

contract RewardRingTest is Test {
    RewardRing public c;
    
    function setUp() public {
        c = new RewardRing();
    }

    function testDeployment() public {
        assertTrue(address(c) != address(0));
    }
}
