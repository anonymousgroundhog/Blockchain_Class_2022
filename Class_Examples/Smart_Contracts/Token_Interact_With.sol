// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GLDToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("Gold", "GLD") {
        _mint(msg.sender, initialSupply);
    }
}


contract Interaction {
    address tokenAddr;

    function setCounterAddr(address _token) public payable {
       tokenAddr = _token;
    }

    function getTokenName() external view returns (string memory) {
        return GLDToken(tokenAddr).name();
    }

    function getTokenSymbol() external view returns (string memory) {
        return GLDToken(tokenAddr).symbol();
    }
}
