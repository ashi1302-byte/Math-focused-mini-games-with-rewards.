// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MathGames {

    // Event emitted when a user completes a game and earns rewards
    event RewardEarned(address indexed user, uint256 rewardAmount, uint256 gameId);

    // Struct to store user information (reward balance)
    struct User {
        uint256 totalRewards;
        uint256[] completedGames;
    }

    // Mapping of user address to user information
    mapping(address => User) public users;

    // Mapping of gameId to the reward amount
    mapping(uint256 => uint256) public gameRewards;

    // Mapping to track whether a user has completed a specific game
    mapping(address => mapping(uint256 => bool)) public gameCompletionStatus;

    // Constructor to initialize the game rewards
    constructor() {
        // Example: Rewards for different games
        gameRewards[1] = 10;  // Game 1 rewards 10 tokens
        gameRewards[2] = 20;  // Game 2 rewards 20 tokens
    }

    // Function to complete a game and earn rewards
    function completeGame(uint256 _gameId) external {
        require(gameRewards[_gameId] > 0, "Game not found or invalid");
        require(!gameCompletionStatus[msg.sender][_gameId], "Game already completed");

        // Mark the game as completed by the user
        gameCompletionStatus[msg.sender][_gameId] = true;
        users[msg.sender].completedGames.push(_gameId);

        // Award the reward for completing the game
        uint256 reward = gameRewards[_gameId];
        users[msg.sender].totalRewards += reward;

        // Emit an event indicating the reward earned
        emit RewardEarned(msg.sender, reward, _gameId);
    }

    // Function to view the total rewards of a user
    function getTotalRewards(address _user) external view returns (uint256) {
        return users[_user].totalRewards;
    }

    // Function to withdraw earned rewards (For demonstration purposes, assuming ETH rewards)
    function withdrawRewards() external {
        uint256 rewardAmount = users[msg.sender].totalRewards;
        require(rewardAmount > 0, "No rewards to withdraw");

        // Reset the user's reward balance after withdrawal
        users[msg.sender].totalRewards = 0;

        // Transfer the rewards to the user (assuming rewards are in Ether)
        payable(msg.sender).transfer(rewardAmount);
    }

    // Fallback function to accept Ether
    receive() external payable {}
}
