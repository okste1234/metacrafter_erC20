# FunctionsandErrors

This Solidity that implements the require(), assert() and revert() statements..

## Description

This program is a simple contract written in Solidity. The contract has 3 function that returns that implements the require(), assert() and revert() statements.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., FunctionsandErrors.sol). Copy and paste the following code into the file:

```javascript
pragma solidity ^0.8.24;

contract FunctionsandErrors {
    uint256 public maxVal;
    uint256 three;

    function requireError(uint256 _val) public view {
        require(maxVal >= _val, "You can't pass a greater than than maxVal");
    }

    function assertError(uint256 _val) public view {
        assert(_val == three);
    }

    function revertError(uint256 _val) public view {
        if (_val != three) {
            revert("_val must be 3");
        }
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.24" (or another compatible version), and then click on the "Compile FunctionsandErrors.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "FunctionsandErrors" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the requireError function or assertError function or revertError function, passing in their respective arguements(_val). Click on the "revertError" contract in the left-hand sidebar, and then click on the "requireError" function, pass in the arguement. Finally, click on the "transact" button to execute the function and retrieve the response message.

## Authors

Adekunle Stephen Omorotimi
[@Okste1234](https://twitter.com/okste1234)

## Loom(video) walkthrough
```bash
hhttps://www.loom.com/share/8d3008df63eb494a8bb6295b42cfbff8?sid=46db770a-6d58-491f-bd63-81e5d2012b02
```
## License

This project is licensed under the MIT License