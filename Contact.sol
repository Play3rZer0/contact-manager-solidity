//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract Contacts {

    struct Contact {
        string name;
        string city;
        uint256 phone;
    }

    mapping(uint256 => Contact) public myContact;

    function addContact(uint256 _id, string calldata _name, string calldata _city, uint256 _phone) public {
        myContact[_id] = Contact(_name, _city, _phone);
    }

    function getContact(uint256 id) public view returns(string memory, string memory, uint256) {
        Contact storage listContact = myContact[id];
        return (listContact.name, listContact.city, listContact.phone); 
    }

}
