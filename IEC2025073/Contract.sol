// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract Contract {    
    uint256 private value;
    mapping(address => string) public messages;
    mapping(address => uint256) public balances;
    event ValueChanged(uint256 newValue);
    event MessageStored(address indexed sender, string message);
    event Deposited(address indexed sender, uint256 amount);
    function setValue(uint256 _value) public {
        value = _value;
        emit ValueChanged(value);
    }
    function getValue() public view returns (uint256) {
        return value;
    }
    function setMessage(string calldata _message) public {
        messages[msg.sender] = _message;
        emit MessageStored(msg.sender, _message);
    }
    function getMessage(address _user) public view returns (string memory) {
        return messages[_user];
    }
    function deposit() public payable {
        require(msg.value > 0, "Must send some ETH");
        balances[msg.sender] += msg.value;
        emit Deposited(msg.sender, msg.value);
    } 
    function getBalance(address _user) public view returns (uint256) {
        return balances[_user];
    }
}
