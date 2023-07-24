// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Ex2 {
    bool public boolean = true; //true or false
    int public integetType = -10; // 양수 ~ 음수
    uint public unsignedIntegerType = 10; //양수만 지정 스토리지를 많이 쓰면 쓸수록 가스를 많이 쓰고 더 많은 돈을 쓴다. 자료타입이 많은 이유.
    uint256 public unsignedInteger256Type = 10000000000000; // uint와 사실 동일함. 매우 큰 숫자를 처리할 때 사용.
    int256 public integer256type = -100103983910; //-2**255 ~ 2 ** 255 -1
    
    uint8 public unsignedInteger8Type = 100;
    int8 public integer8Type  = -100;

    string public stringType = "Hello, world"; //string type은 byte로 저장됨.
    
    bytes public byteType = "Hello, world"; 
    //byte type에 똑같이 동일하게 표현 가능. 길이를 알 수 없는 값을 쓸때(=string)

    bytes20 public bytes20Type = hex"4cD970512807218D9bA7cC137fC46D279840D01E"; 
    //고정 길이, 주소값을 쓸 때 사용.
    bytes32 public bytes32Type = hex"c81e289a7804fdabb62378e1de6799ee3d5e46a4d4d8baf067404f1b81735fdb";

    address public addressType = 0x4cD970512807218D9bA7cC137fC46D279840D01E;

}