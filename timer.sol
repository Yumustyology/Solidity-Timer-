pragma solidity ^0.8.9;

contract timer{
    
    uint _start;
    uint _end;
    
  
    modifier timeOver{
        require(block.timestamp <= _end, "The time is over");
        _;
    }
    
    
     function start() public {
        _start = block.timestamp;
    }
    
    
    function end(uint totoaltime) public{
        _end = totoaltime + _start;
    }
    
    function grtTimeLeft() public view returns(uint){
        
        return _end - block.timestamp;
        
    }
    
}