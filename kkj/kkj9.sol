// SPDX-License-Identifier: MIT

// instance 2 : constructor 생성자 : 변수의 값을 초기화할 때 주로사용.

pragma solidity >= 0.7.0 < 0.9.0;

contract kkj9A{
    
    string public name;
    uint256 public age;

    constructor(string memory _name, uint256 _age){
        name = _name;
        age = _age;
    }
        


}

contract kkj9B{
    kkj9A instance = new kkj9A("Alice", 52);

    function get() public view returns(string memory, uint256){
        return(instance.name(), instance.age());
    }
}