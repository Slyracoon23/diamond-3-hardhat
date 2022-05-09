// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { LibDiamond } from "../libraries/LibDiamond.sol";
import { LibStrings } from "../libraries/LibStrings.sol";



contract CityDAOParcelFacet {

    // Events

    event MerkleRootChanged(bytes32 _newWhitelistMerkleRoot);
    event MintEndPeriodChanged(uint256 _end_mint_period);


   /***********************************|
   |             Pure Functions         |
   |__________________________________   */

   ///////////// ERC721 ///////////////




   ///////////// My Functions /////////////

    // function _leaf(address account, uint256 allowance) internal pure returns (bytes32) {
    //     return keccak256(abi.encodePacked(account, allowance));
    // }


    //  function _verify(bytes32 leaf, bytes32[] memory proof) internal view returns (bool) {
    //     return MerkleProof.verify(proof, whitelistMerkleRoot, leaf);
    // }




   /***********************************|
   |             Read Functions         |
   |__________________________________   */

   //////////////// ERC721  //////////////////

    function name() external view returns (string memory) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();
        return ds.name;
    } 

    function symbol() external view returns (string memory) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.symbol;
    }

    function baseURI() external view returns (string memory) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.baseURI;
    }

     function tokenURI(uint256 _tokenId) external view returns (string memory) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return LibStrings.strWithUint(ds.baseURI, _tokenId); //Here is your URL!
    }

    //////////// My Functions ///////////////////////

    //  function getAllowance(address account, uint256 allowance, bytes32[] calldata proof) public view returns (uint256) {
    //     require(_verify(_leaf(account, allowance), proof), "Invalid Merkle Tree proof supplied.");
    //     return allowance;
    // }


   /***********************************|
   |             Write Functions        |
   |__________________________________  */

    //////////////// ERC721  //////////////////

      ///////////// Setters //////////////////


    function setName(string memory _name) external {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        ds.name = _name;
    } 

     function setSymbol(string memory _symbol) external {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

         ds.symbol = _symbol;
    } 

    function setBaseURI(string memory _baseURI) external {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        ds.baseURI = _baseURI;
    }



    //////////// My Functions ///////////////////////

        ///////////// Setters //////////////////



    // function setMintEndPeriod( uint256 _end_mint_period) external onlyOwner {
    //     LibDiamond.MINT_END_PERIOD = _end_mint_period;
    //     emit MintEndPeriodChanged(_end_mint_period);
    // }
    
    // function setWhitelistMerkleRoot(bytes32 _whitelistMerkleRoot) external onlyOwner {
    //     LibDiamond.whitelistMerkleRoot = _whitelistMerkleRoot;
    //     emit MerkleRootChanged(whitelistMerkleRoot);
    // }



        //////////// Other ////////////////////

    // function whitelistMint(address account, uint256 count, uint256 allowance, bytes32[] calldata proof) external {
    //     require( block.timestamp <= MINT_END_PERIOD, "Mint Period has overlapsed");
    //     require(_verify(_leaf(account, allowance), proof), "Invalid Merkle Tree proof supplied.");
    //     require(addressToMinted[account] + count <= allowance, "Exceeds whitelist allowance");

    //     addressToMinted[account] += count;
    //     uint256 totalSupply = totalSupply();
    //     for(uint i; i < count; i++) {
    //         _mint(account, totalSupply + i);
    //     }
    // }


    //   function batchTransferFrom(address _from, address _to, uint256[] memory _tokenIds) public {
    //     for (uint256 i = 0; i < _tokenIds.length; i++) {
    //         transferFrom(_from, _to, _tokenIds[i]);
    //     }
    // }

    //   function batchTransferFrom(address _from, address _to, uint256[] memory _tokenIds) public {
    //     for (uint256 i = 0; i < _tokenIds.length; i++) {
    //         transferFrom(_from, _to, _tokenIds[i]);
    //     }
    // }

}


