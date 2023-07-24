// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Ex4 {
    uint8 private data = 255;

    function setData(uint8 newData) public {
        data = newData;
    }

    function getData() public view returns(uint8) {//view: return 을 스토리지(상태관리중)에 있으면, 그 정보를 꺼내기만하고 변경하지 않으면
    //view를 쓴다.
    
        return data;
    }
}