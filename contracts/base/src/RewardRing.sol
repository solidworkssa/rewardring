// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title RewardRing Contract
/// @author solidworkssa
/// @notice Gamified loyalty reward system.
contract RewardRing {
    string public constant VERSION = "1.0.0";


    mapping(address => uint256) public points;
    
    function earn(uint256 _points) external {
        // Only admin
        points[msg.sender] += _points;
    }
    
    function redeem(uint256 _points) external {
        require(points[msg.sender] >= _points, "Insufficient points");
        points[msg.sender] -= _points;
        // Logic to give reward
    }

}
