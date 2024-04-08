// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address private _owner;

    constructor() ERC20("MyToken", "MTF") {
        _mint(msg.sender, 1000000000 * 10 ** decimals());
        _owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == _owner, "Only the owner can call this function");
        _;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transfer(
        address to,
        uint256 amount
    ) public override returns (bool) {
        require(amount <= balanceOf(msg.sender), "Insufficient balance");
        _transfer(msg.sender, to, amount);
        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public override returns (bool) {
        require(
            amount <= allowance(from, msg.sender),
            "Insufficient allowance"
        );
        _transfer(from, to, amount);
        _approve(from, msg.sender, allowance(from, msg.sender) - amount);
        return true;
    }
}
