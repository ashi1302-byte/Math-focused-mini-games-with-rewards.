## Project Title
Math-Focused Mini-Games with Rewards

## Project Description
The **Math-Focused Mini-Games with Rewards** project is an interactive learning platform that combines fun and education. The platform allows users to participate in various math-based mini-games that challenge their mathematical skills, such as arithmetic problems, puzzles, and logic games. By completing these games, users can earn rewards, incentivizing them to improve their math abilities. The rewards are issued through a smart contract, which tracks user progress and ensures fair distribution.

Users are rewarded with tokens or Ether for each successfully completed game. The smart contract stores user data, including their total rewards and completed games, and also allows users to withdraw their earned rewards in Ether.

## Contract Address
0x8dA4b5A0218B6e65e7B4D3c67e4fcCd1E1a29469
<img width="850" alt="image" src="https://github.com/user-attachments/assets/3cc8d46e-92f0-49ec-9ad0-4e2032067eb3" />

## Project Vision
The vision of the **Math-Focused Mini-Games with Rewards** project is to create a unique educational platform that motivates users to engage with and improve their math skills. By gamifying the learning experience and integrating a blockchain-based rewards system, the project aims to offer users a fun way to learn while providing real-world incentives. The platform also aims to introduce educational gamification on the blockchain, where knowledge translates into tangible rewards.

## Key Features
1. **Interactive Math Mini-Games**:
   - A collection of mini-games that challenge users with math puzzles and exercises.
   - The difficulty of games can vary, making it accessible to a wide range of skill levels.

2. **Reward System**:
   - Users earn Ether (ETH) as rewards for completing math-based mini-games.
   - Each game has a specific reward associated with it, determined by the `gameRewards` mapping in the smart contract.

3. **Game Completion Tracking**:
   - The contract ensures that users can only earn rewards once for each game.
   - The user's completed games are tracked in the smart contract, preventing duplicate rewards.

4. **Withdraw Rewards**:
   - Users can withdraw their earned rewards via the `withdrawRewards()` function.
   - The contract transfers the accumulated rewards in Ether to the user's wallet upon request.

5. **Smart Contract Security**:
   - All interactions are handled by a decentralized smart contract, ensuring transparency and security in the distribution of rewards.
   - The contract is immutable, meaning users can trust that the rules for earning rewards will not change unexpectedly.

6. **Ease of Use**:
   - The contract is simple to interact with via Web3, allowing users to easily participate in the platform and view their progress.

7. **Scalability**:
   - New games and reward structures can be added by modifying the smart contract, ensuring that the platform can grow and evolve over time.

8. **Fallback Mechanism**:
   - The contract can accept Ether through a fallback function, making it easy to fund the reward pool for users.
