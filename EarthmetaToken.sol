// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./ERC20.sol";

contract Earthmeta is ERC20 {

    // Earthmeta Ecosystem Token Contract
    constructor() ERC20("Earthmeta", "EMT") {
        uint256 totalSupply = 2_100_000_000 * (10 ** uint256(decimals())); // Considering 18 decimals

        // Allocations
        uint256 preSaleTokens = 210_000_000 * (10 ** uint256(decimals()));
        uint256 stakingTokens = 273_000_000 * (10 ** uint256(decimals()));
        uint256 liquidityTokens = 252_000_000 * (10 ** uint256(decimals()));
        uint256 teamTokens = 84_000_000 * (10 ** uint256(decimals()));
        uint256 reserveTokens = totalSupply - (preSaleTokens + stakingTokens + liquidityTokens + teamTokens);


        // Minting tokens to deployment addresses
        _mint(0x5EA0c494750e361D94d955614236883438CF0D19, preSaleTokens); 
        _mint(0xcc6422e27de847982A8168Ef9a9D13B125b08403, stakingTokens);
        _mint(0xb2D47Fa99FE2f0b3872AA98422Fd7c90D94226AA, liquidityTokens);
        _mint(0xB7F805749d3B3fA2c78beF3632C80BD90B384410, teamTokens); 
        _mint(0xb69CF208d3a65304F68991FEf623155dEd1aa1C0, reserveTokens); 
    }
}