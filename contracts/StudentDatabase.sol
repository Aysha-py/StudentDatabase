// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// import "hardhat/console.sol";



contract StudentDatabase{
//address is the key, student is the value,students is the specifier
    mapping (address => student) public StudentRecord;

    


//my structue
    struct student{
        
        address studentId;
        string  name;
        uint age;
    }
   
    function registerStudent(address studentId,string memory name, uint age) public  {
       
            
            StudentRecord[studentId] = student(studentId,name,age);
           
    }
    

    function getStudentDetails(address studentId) public view returns (address,string memory,uint){

        return(StudentRecord[studentId].studentId,
        StudentRecord[studentId].name,
        StudentRecord[studentId].age);
    }
  
}
