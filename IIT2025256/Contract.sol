pragma solidity ^0.8.34;

contract SimpleStorage {
    uint256 private value;

    function setValue(uint256 _value) public {
        value = _value;
    }

    function increment() public {
        value++;
    }

    function decrement() public {
        require(value > 0, "Value cannot be negative");
        value--;
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}