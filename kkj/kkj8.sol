// SPDX-License-Identifier: MIT

// instance 1 : 하나의 contract에서 다른 contract에 접근할 떄 사용함.

pragma solidity >= 0.7.0 < 0.9.0;

contract kkj8A{
    uint256 public a = 5; 

    function change(uint256 _value) public{
        a = _value;
    }
}

contract kkj8B{
    kkj8A instance = new kkj8A();

    function get_A() public view returns(uint256){
        return instance.a();
    }
    function change_A(uint256 _value) public{
        instance.change(_value);
    }
}