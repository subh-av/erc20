// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {

    constructor() ERC20("MyToken", "MTK") {
        // Initial supply minted to the contract deployer
        _mint(msg.sender, 1000 * 10 ** decimals());  // Adjust initial supply if needed
    }

    // Mint function that can only be called by the owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
