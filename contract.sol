pragma solidity ^0.4.18;
contract Atendance {
    struct Checker {
        address student;
        uint name;
        uint date;
        bool isCheck;
    }
  address teacher;
  mapping (bytes32 => bool) public atendace;
  bytes32[] public students;

  constructor(bytes32[] newStudents) public {
      teacher = msg.sender;
      students = newStudents;
  }

  function tickforStudent(bytes32 studentName,  bool isTick) public {
     require(validateTeacher());
     require(validateStudent(studentName));
     atendace[studentName] = isTick;
  }
  
//   function printAtendce() public view returns (mapping(bytes32 =>bool) list){
//       return atendace;
//   }
  
  function printStudent(bytes32 studentName) public view returns(bool){
      require(validateStudent(studentName));
      return atendace[studentName];
  }
  function validateStudent(bytes32 studentName) public view returns(bool){
      for (uint i = 0; i < students.length; i++){
          if(students[i] == studentName ){
              return true;
          }
      }
      return false;
  }
  function validateTeacher() public view returns(bool){
       if(teacher != msg.sender){
          return false;
      }
      return true;
  }
  
  function getTeacher() public view returns(address){
      return teacher;
  }
}