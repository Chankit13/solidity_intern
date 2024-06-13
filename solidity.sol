// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables
    string public name = "Chankit";       // Token Name
    string public symbol = "CHC";         // Token Abbreviation
    uint256 public totalSupply = 0;       // Total Supply

    // Mapping to store balances
    mapping(address => uint256) public balances;

    // Mint function to create new tokens
    function mint(address _to, uint256 _amount) public {
        totalSupply += _amount;           // Increase total supply
        balances[_to] += _amount;         // Increase balance of the receiver
    }

    // Burn function to destroy tokens
    function burn(address _from, uint256 _amount) public {
        require(balances[_from] >= _amount, "Insufficient balance");  // Check if the sender has enough tokens
        totalSupply -= _amount;           // Decrease total supply
        balances[_from] -= _amount;       // Decrease balance of the sender
    }
}
