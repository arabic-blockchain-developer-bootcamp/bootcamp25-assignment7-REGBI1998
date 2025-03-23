// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol"; // Assuming you're using Foundry for testing
import "../src/Assignment7.sol"; // Adjust the path to your contract

contract Assignment7Test is Test {
    Assignment7 public assignment;

    function setUp() public {
        // Deploy the contract with the required arguments
        assignment = new Assignment7("MyToken", "MTK");
    }

    function testMint() public {
        address recipient = address(0x123); // Example address
        uint256 amount = 1000;

        // Mint tokens
        assignment.mint(recipient, amount);

        // Check the balance of the recipient
        assertEq(assignment.balanceOf(recipient), amount);
    }
}