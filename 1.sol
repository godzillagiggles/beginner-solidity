//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Tken {

    string public tk_Name = "COIN";
    string public tk_Abbry = "CN";
    uint public tot_Supply = 0;

    mapping (address => uint) public balance;

    function mint (address adrs, uint val) public 
    {

        tot_Supply += val; 
        balance[adrs] += val;
    }
        
    function burn (address adrs, uint val) public 
    {

        if (balance[adrs] >= val) 
        {

        tot_Supply  -= val;

        balance[adrs] -= val; 
        }
    }
}