// SPDX-License-Identifier: GPL-3.0
// SPDX-License-Identifier: MIT


pragma solidity >=0.7.0 <0.9.0;

contract SimpleStorage {

    //uint256 public varNum = 0;
    uint256 varNum = 0;
    
    /* 
    bool b = true;
    string str = "String";
    int256 i2 = -5;
    address adss = 0xb92CFedFB43538424EF5Ed264a812F9361127710;
    bytes32 byt = 'byt'; 
    */

    struct People {
        uint256 varNumPeople;
        string name;
    }

    People public people = People({varNumPeople: 100, name: "me"});

    People[] public Groupe;

    //data structure
    mapping (string => uint256 ) public NameToVarNum;

    function store(uint256 props) public {
        varNum = props ;
    }

    function retrieve() public view returns(uint256) {
        return varNum;
    }

    function sum(uint256 props) public pure  {
        props + props;
    }

    //storage and memory
    function addPeople(string memory propsName, uint256 propsVarNum) public {
        Groupe.push(People({varNumPeople: propsVarNum, name: propsName}));
        NameToVarNum[propsName] = propsVarNum;
    }

}