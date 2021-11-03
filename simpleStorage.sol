pragma solidity ^0.8.9;

contract storage{

    struct People{
        uint name;
        uint id;
        uint age;
    }

    People[] person;
    
    function addPerson(uint _id, uint _age, string calldata _name) public {
        person.push(People({name:_name, id:_id,age:_age}));
    }

    function getData(uint _index) view returns(People memory) {
        return person[_index];
    }

}