// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "solmate/tokens/ERC721.sol";

error SoulboundError();

/// @notice ERC-721 implementation that does not allow transfers
abstract contract Soulbound is ERC721 {
    function approve(address, uint256) public virtual override {
        revert SoulboundError();
    }

    function setApprovalForAll(address, bool) public virtual override {
        revert SoulboundError();
    }

    function transferFrom(
        address,
        address,
        uint256
    ) public virtual override {
        revert SoulboundError();
    }

    function safeTransferFrom(
        address,
        address,
        uint256
    ) public virtual override {
        revert SoulboundError();
    }

    function safeTransferFrom(
        address,
        address,
        uint256,
        bytes calldata
    ) public virtual override {
        revert SoulboundError();
    }
}
