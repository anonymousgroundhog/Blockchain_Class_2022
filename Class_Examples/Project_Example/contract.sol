//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Fakeproduct2{


    address owner;
   

    struct Retailer
    {
        string Retailer_name;
        string Retailer_loc;
    }
    
   modifier onlyOwner() 
     { require(msg.sender == owner);
      _;
     }
     constructor ()
        public
        payable
    {
        owner = msg.sender;
    }  
    
    mapping (string => Retailer) Retailer_data;  //mapping of Retailer mail id to retailer

   //Recording retailer
    function CreateRetailer(string memory email,string memory name,string memory loc)  public {
     Retailer_data[email].Retailer_name=name;
     Retailer_data[email].Retailer_loc=loc;
   }
    //to get retailer details
    function Getretailer(string memory mail) public view returns (string memory, string memory)
    {
        return (Retailer_data[mail].Retailer_name, Retailer_data[mail].Retailer_loc);
    }
}
