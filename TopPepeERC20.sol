// SPDX-License-Identifier: MIT

//                 ############### ############### ###############                
//                      ####       ###*       ####             ###                
//                      ####       ###*       ####      *#########                
//                      ####       ###(       #### ###########*                   
//                      ####       ############### ####                           
//                      ####       ###    ######## ####                           
//                                 ###########                                    
//                                      ##########                                
//                                            ####                                
//                                 ###############                                
//                                 ###############                                
//                                 ####                                           
//                                 ####                                           

pragma solidity ^0.8.9;

// Import necessary OpenZeppelin libraries
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Define the TopPepeERC20 contract, which inherits from ERC20, ERC20Burnable, and Ownable
contract TopPepeERC20 is ERC20, ERC20Burnable, Ownable {
// Constructor for the TopPepeERC20 contract
constructor() ERC20("TopPepe", "TOPP") {}
// Function to mint new TopPepe tokens, callable only by the contract owner
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount); // Call the internal _mint function from the ERC20 contract
    }
}
