// SPDX-License-Identifier: MIT
//가장 첫줄은 라이센스 명시 
pragma solidity ^0.8.18; //pragma: compilor에게 지시하는 것. 특정 범위를 지정.
//pragma solidity >=0.8.0 <0.9.0 (범위를 지정)

contract EX1 {
    //a state -> Tx -> A'
    uint8 public a = 10; // a상태 전역변수를 선언하면 스토리지에 들어감. 겟터함수가 자동으로 생성된다.

    function changeDate() public {
        a = 15; //a 상태를 변경한다.
    }
}