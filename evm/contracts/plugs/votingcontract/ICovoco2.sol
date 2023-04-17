//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import {ICovocoBase} from "./ICovocoBase.sol";

/// @title Configurable Voting Contract Interface
/// @author Leonhard Horstmeyer <leomarlo.eth@gmail.com>
/// @dev A Voting Contract is an implementations of a particular type of voting mechanism. 
///      It can be thought of as a standalone contract that handles the entire life-cycle of voting, 
///      from the initialization, via the casting of votes to the retrieval of results. Optionally it can
///      be extended by the functionality of triggering the outcome of the vote through a call whose calldata is already passsed at the initialization. 
///      The standard allows for a great deal of versatility and modularity. Versatility stems from the fact that 
///      the standard doesn't prescribe any particular way of defining the votes and the status of the vote. But it does
///      define a universal interface used by them all.  



interface ICovoco2 is ICovocoBase{
    ///  Note: the ERC-165 identifier for this interface is .
    ///   ===
    ///         bytes4(keccak256('start(bytes,bytes)')) ^
    ///         bytes4(keccak256('vote(uint256,bytes)')) ^
    ///         bytes4(keccak256('execute(uint256)'));
    ///

    /// @notice casts a vote on a voting instance referenced by the identifier
    /// @param identifier unique identifier of the voting instance on which one would like to cast a vote
    /// @return status information for the caller, whether the vote has triggered any changes to the status
    function execute(uint256 identifier) external returns(uint256 status);
}
