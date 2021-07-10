// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.4 <0.9.0;

contract myContract{
    
    mapping(uint => string) public names;
    mapping(uint => Book) public myBooks;
    mapping(address => mapping(uint => Book)) public myLibrary;
    
    struct Book{
        string title;
        string author;
    }
    
    constructor() {
        names[1] = "Bo";
        names[2] = "Todd";
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public{
        myBooks[_id] = Book(_title, _author);
    }
    
    function addLentBooks(uint _id, string memory _title, string memory _author) public{
       myLibrary[msg.sender][_id] = Book(_title, _author);
    }
    
    
}