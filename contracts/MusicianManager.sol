// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import './OnlyOwner.sol';

contract MusicianManager is OnlyOwner{

 struct Track {
  string title;
  uint duree;
 }

 struct Musician {
  string name;
  Track[] tracks;
 }

 mapping(address => Musician) Musicians;

 function addMusician(address _address, string memory _name) external _isOwner {
    require( bytes(Musicians[_address].name).length == 0 , "Le musicien existe deja !");
    Musicians[_address].name = _name;
 }

 function getMusician(address _address) external view returns (Musician memory) {

  return Musicians[_address];

 }

 function addTrack(address _address, string memory _title, uint _duree) external _isOwner {
    require( bytes(Musicians[_address].name).length >= 0 , "Le musicien n'existe meme pas !");
    Track memory thisTrack = Track(_title, _duree);
    Musicians[_address].tracks.push(thisTrack); 
 }

  function getTracks(address _address) external view returns (Track[] memory) {
    return Musicians[_address].tracks;
  }

}