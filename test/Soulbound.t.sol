// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "forge-std/Test.sol";
import "./mocks/MockSoulbound.sol";

contract SoulboundTest is Test {
    MockSoulbound soulbound;

    function setUp() public {
        soulbound = new MockSoulbound("Soulbound", "SB");
    }

    function testApprove() public {
        vm.expectRevert(SoulboundError.selector);
        soulbound.approve(address(0), 0);
    }

    function testSetApprovalForAll() public {
        vm.expectRevert(SoulboundError.selector);
        soulbound.setApprovalForAll(address(0), true);
    }

    function testTransferFrom() public {
        vm.expectRevert(SoulboundError.selector);
        soulbound.transferFrom(address(0), address(0), 0);
    }

    function testSafeTransferFrom() public {
        vm.expectRevert(SoulboundError.selector);
        soulbound.safeTransferFrom(address(0), address(0), 0);
    }

    function testSafeTransferFromWithData() public {
        vm.expectRevert(SoulboundError.selector);
        soulbound.safeTransferFrom(address(0), address(0), 0, abi.encode(10));
    }
}
