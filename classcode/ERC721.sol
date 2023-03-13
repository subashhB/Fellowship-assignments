//SPDX-License-Identifier:MIT

pragma solidity 0.8.10;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNft is ERC721,ERC721Burnable,ERC721URIStorage,Ownable{

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;


    constructor() ERC721("MyArt","Art"){}

    function mint(address to,string memory _uri) public onlyOwner{
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to,tokenId);
        _setTokenURI(tokenId,_uri);

    }

    function _burn(uint256 _tokenId) internal override(ERC721,ERC721URIStorage){
        super._burn(_tokenId);
    }

    function tokenURI(uint256 tokenId) public view override(ERC721,ERC721URIStorage) returns(string memory){
        return super.tokenURI(tokenId);
    }

}