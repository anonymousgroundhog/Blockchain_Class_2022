// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Calculator
 * @dev Calculator app
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Calculator {

    /**
     * @dev Calculate the addition of two numbers
     * @param num1, num2
     */
    function add(uint256 num1, uint256 num2) public view returns(uint){
        return uint256(num1+num2);
    }

    /**
     * @dev Calculate the subtraction of two numbers
     * @param num1, num2
     */
    function subtract(uint256 num1, uint256 num2) public view returns(uint){
        return uint256(num1-num2);
    }

    /**
     * @dev Calculate the multiply of two numbers
     * @param num1, num2
     */
    function multiply(uint256 num1, uint256 num2) public view returns(uint){
        return uint256(num1*num2);
    }

    /**
     * @dev Calculate the divide of two numbers
     * @param num1, num2
     */
    function divide(uint256 num1, uint256 num2) public view returns(uint){
        return uint256(num1/num2);
    }
}

