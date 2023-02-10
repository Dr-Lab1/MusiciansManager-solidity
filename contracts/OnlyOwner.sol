// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract OnlyOwner {
  
  address isOwner;
  
  constructor() public {
    
    isOwner = msg.sender;
  
  }

  modifier _isOwner {
    require(isOwner == msg.sender, "Vous n'etes pas le proprietaire");
    _;
  }

}