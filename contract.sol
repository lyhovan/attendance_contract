pragma solidity ^0.4.21;
import 'viewContract';
contract Atendance {
    address teacher;
    mapping (address => uint) public atendace;
    struct Checker {
        address student;
        uint name;
        uint date;
        bool isCheck;
    }
    constructor() public{
      teacher = msg.sender
    }  
  function tickforStudent(address, bool isTick) {
      
  }
}