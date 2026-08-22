//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MyTaskContract{
    uint public counter;
    mapping(address => string) public messages;

    function increment() public{
                counter++;
    }
    
    function decrement() public{
        require(counter>0,"Counter is at minimum");
                counter--;
    }

    function setMessage(string memory message) public{
                messages[msg.sender] = message;
    }

    function deposit() public payable{
        
    }
}