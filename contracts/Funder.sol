// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22 <0.9.0;

contract Funder
{
       uint256 public numOfFunders;
       mapping(uint256=>address) private funders;

       receive() external payable{}

       function transfer() external payable
        {
            funders[numOfFunders]=msg.sender;
        }

        function withdraw(uint256 amount) public  
        {
             require(amount<=200000000000000000,"cannot withdraw more than 2 ether");
             payable(msg.sender).transfer(amount);
        }

        
}