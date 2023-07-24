// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Ex3 {
    uint public intData;
    string public stringData;

    function math() public {
        intData += 1;
        //intData = intData * 1;
        //intData = intData / 1;
    }

    function weiToEth() public {
        uint weiData = 1 wei;
        uint ethData = weiData * (10 ** 18);
        //solidity에서 1Eth는  1000000000000000000 Wei
        //frontend 1000000000000000000 / (10 ** 18) = 1Eth
        uint gweiData = weiData * (10 ** 9);
        
    }

    function logical() public {
        bool trueData = true;
        bool falseData = false;

        if(trueData) {
            //
        } else {
            //
        }

        if (trueData && falseData) {}//false
        if (trueData || falseData) {}//true
        if(trueData == falseData) {}//false
    }

    function logical2() public {
        uint8 bigData = 100;
        uint8 smallData = 1;

        if(bigData == smallData) {} //false
        if(bigData > smallData) {} //true
        if(bigData != smallData) {} //true
    }
    //이런식으로 modifier라고 하는 컨트랙트를 수행하기 전에, 먼저 체크를 하는 코드를 많이 넣는다. ex) contract의 owner인지 체크, 돈잔량체크
}