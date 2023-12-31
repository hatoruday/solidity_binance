// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PureView {
  uint8 private data = 255;

  function getData() public view returns(uint8) { // state값을 조회하는 경우
    return data;
  }

  function getPureData() public pure returns(uint8) { // state값을 조회 하지 않은 경우
    uint8 tempData = 1;
    return tempData;
  }

  // Storage : 영구적 저장 
  // memory : 일시적 생성 
  uint8 storage private sdata = 255;

  function getStorageData() public view returns(uint8) { // state값을 조회하는 경우
    return sdata;
  }
    //값을 파라미터로 받을 때 string이면 메모리 길이가 정해지지 않는 경우에 memory라고 작성해서 받는다.
  function getMemoryData(string memory _data) public pure returns(uint8 memory) { // state값을 조회 하지 않은 경우
    uint8 memory tempData = 1;
    return tempData;
  }

  // memory 값을 읽을때는 pure를 사용, storage 값을 읽을때는 view를 사용.
}