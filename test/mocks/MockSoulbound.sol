// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "../../src/Soulbound.sol";

contract MockSoulbound is Soulbound {
    constructor(string memory _name, string memory _symbol)
        ERC721(_name, _symbol)
    {}

    function tokenURI(uint256)
        public
        pure
        virtual
        override
        returns (string memory)
    {}
}
