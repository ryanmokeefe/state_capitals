# Let's Learn our State Capitals

We're going to create a game to help us memorize the names of the capitals of all 50 states. Your program should prompt the user to identify the capital associated with a given state. There should be running tallies on the number of correct and incorrect answers. After getting through all 50 states one time, users should be asked whether or not they want to play again. As they continue, the prompts on states should appear in the order of the ones the user got wrong the most to least. You're given an array of hashes that contain each state name and capital. *(Hint: For the purposes of developing this program, start with a test array of three hashes so you don't have to play through all 50 states each time.)*

## Methods to Research
- `.each_with_index`
- `.sort_by`
- `.shuffle`

## Use Ruby to implement the following tasks

- Make sure the states don't appear in alphabetical order in the prompts. This will make the game a bit more challenging for the user.

- Provide a welcome message to introduce the player to the game.

- Initialize new keys in the hashes that store the number of times a user gets a capital correct and the number of times the answer is wrong.

- Through all 50 states, prompt the user to name the capital of the state. If the answer is correct, display a message saying so increment the `correct` key. If the answer is wrong, display a message saying so and increment the `wrong` key. After each prompt, display a message telling the reader how many times the state was answered correctly out of the total number of times answered.

- Once the user has gone through all 50 states, ask them if they'd like to play again. If they choose to do so, set the order of how the prompts appear to start with the ones they got wrong the most often.
