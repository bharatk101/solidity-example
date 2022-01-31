// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.4 <0.9.0;


contract Ownable{
    address owner;
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier OnlyOwner(){
        require(msg.sender == owner, "Must be Owner");
        _;
    }
    
}

contract SecretVault{
    string secret;
    
    constructor(string memory _secret) {
        secret = _secret;
    }
    
    function getSecret() public view returns(string memory){
        return secret;
    }
}

contract MyContract is Ownable {
    address secretVault;
    
    constructor(string memory _secret) {
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        super;
    }
    
    function getSecret() public view OnlyOwner returns(string memory){
        SecretVault _secretVault = SecretVault(secretVault);
        return _secretVault.getSecret();
    }
    
}