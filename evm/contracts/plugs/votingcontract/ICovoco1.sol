//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import {ICovocoBase} from "./ICovocoBase.sol";


/// @title Covoco 1.0 
/// @author Leonhard Horstmeyer <leomarlo.eth@gmail.com>
/// @dev A Voting Contract is an implementations of a particular type of voting mechanism. 
///      It can be thought of as a standalone contract that handles the entire life-cycle of voting, 
///      from the initialization, via the casting of votes to the retrieval of results. Optionally it can
///      be extended by the functionality of triggering the outcome of the vote through a call whose calldata is already passsed at the initialization. 
///      The standard allows for a great deal of versatility and modularity. Versatility stems from the fact that 
///      the standard doesn't prescribe any particular way of defining the votes and the status of the vote. But it does
///      define a universal interface used by them all.  


interface ICovoco1 is ICovocoBase{
    ///  Note: the ERC-165 identifier for this interface is 0x9452d78d.
    ///  0x9452d78d ===
    ///         bytes4(keccak256('start(bytes,bytes)')) ^
    ///         bytes4(keccak256('vote(uint256,bytes)')) ^
    ///         bytes4(keccak256('result(uint256)'));
    ///

    /// @notice returns the result of the voting instance
    /// @dev The result can be the byte-encoded version of an address, an integer or a pointer to a mapping that contains the entire result.
    /// @param identifier unique identifier for which one would like to know the result
    /// @return resultData byte-encoded data that encodes the result.
    function result(uint256 identifier) external view returns(bytes memory resultData);

}
