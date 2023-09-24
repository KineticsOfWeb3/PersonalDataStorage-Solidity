// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


contract PersonalStorageData {

    uint256 phoneNumber;

    mapping(string => uint256) public nameToFavoriteNumber;

    struct PeopleInfo{
        uint256 phoneNumber;
        string name;
        string houseAddress;
    }

        
    PeopleInfo[] public  people;

    function store(uint256 _phoneNumber) public {
        phoneNumber = _phoneNumber;
    }

    function retrieve() public view returns(uint256) 
    {
        return phoneNumber;
    }

    function addPerson(string memory _name, string memory _houseAddress,
     uint256 _phoneNumber)
        public {
            people.push(PeopleInfo(_phoneNumber, _name, _houseAddress));
            nameToFavoriteNumber[_name];
        }

    }