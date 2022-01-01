// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC721, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("MyToken", "MTK") {
    }

    function _baseURI() internal pure override returns (string memory) {
        return "asdda";
    }

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
    }

    function buywithshib() public  {
        // require(ShibaLite.balanceOf(address(msg.sender)) >= _amount,"U dnt have enough balance");
        // ShibaLite.transfer(payable(address(this)),_amount);
      ERC20(address(0x0fC5025C764cE34df352757e82f7B5c4Df39A836)).transferFrom(msg.sender,payable(address(this)),100);
        // return value;
    }
}


//user and to approve the contract for transfer og token..