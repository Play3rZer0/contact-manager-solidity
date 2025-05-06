//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract Contacts {

    //create the struct to store collection of Contact information
    struct Contact {
        string name;
        string city;
        uint256 phone;
    }

    //create the mapping to associate the Contact information with an id number
    mapping(uint256 => Contact) public myContact;

    //the addContact() function adds a new contact
    function addContact(uint256 _id, string calldata _name, string calldata _city, uint256 _phone) public {
        myContact[_id] = Contact(_name, _city, _phone);
    }

    //the getContact() function retrieves the information about a contact based on the id number
    function getContact(uint256 id) public view returns(string memory, string memory, uint256) {
        Contact storage listContact = myContact[id];
        return (listContact.name, listContact.city, listContact.phone); 
    }

}
