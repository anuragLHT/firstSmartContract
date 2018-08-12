pragma solidity ^0.4.0;

contract MyToken {
        /* This creates an array with all balances */
        mapping (address => uint256) public balanceOf;
        string public name;
        string public symbol;
        uint8 public decimals;
      
      
       function MyToken(uint256 initialSupply,string token_name,string token_symbol,uint8 decimalUnit) public {
         balanceOf[msg.sender] = initialSupply;
         name = token_name;
         symbol = token_symbol;
         decimals = decimalUnit;
       }
       
      function transfer(address _to, uint256 _value) public {
        require(balanceOf[msg.sender] >= _value && balanceOf[_to] + _value >= balanceOf[_to]);
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
    }    
      
}