# ODiToken (ERC20)

The `ODiToken` contract is an `ERC20` token with minting and burning features, built using OpenZeppelin's contracts.

## Description
`ERC20`: Standard token implementation.
`ERC20Burnable`: Adds token burning.
`Ownable`: Manages ownership and minting rights.

### Code Breakdown
Here’s a brief explanation of each function in the ODiToken contract:
1. `mintToken` Function:
   
   ```solidity
    function mintToken(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
   ```
   
   `Purpose`: Allows the contract owner to create new tokens and send them to a specified address.
   `Access`: Only called by the contract owner (`onlyOwner` modifier).

2. `mintToMySelf` Function:

   ```solidity
    function mintToMySelf(uint256 _amount) public onlyOwner {
        mintToken(msg.sender, _amount);
    }
   ```
   
   `Purpose`: Allows the contract owner to mint tokens directly to their own address.
   `Access`: Only called by the contract owner (`onlyOwner` modifier).

3. `burnToken` Function:

   ```solidity
    function burnToken(uint256 amount) public {
        _burn(_msgSender(), amount);
    }
   ```
   
   `Purpose`: Allows any token holder to burn a specified amount of their own tokens.
   `Access`: Called by any token holder, no access restriction

4. `transferToken` Function:

   ```solidity
    function transferToken(address recipient, uint256 amount) public returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }
   ```
   
   `Purpose`: Allows any token holder to transfer tokens to another address and returns true of successful
   `Access`: Called by any token holder, no access restriction

## Authors

Susan Odianosen
[@metacraftersio](https://twitter.com/metacraftersio)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
