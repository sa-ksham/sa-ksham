
Welcome to the Text-Based Driving Game!

Commands:
- "go forward" or "f" to move the car forward.
- "turn left" or "l" to turn the car left.
- "turn right" or "r" to turn the car right.
- "quit" to exit the game.

Instructions:
- Follow traffic rules.
- Reach the destination to win.

import random

def play_game():
    print("--------------------------------------------------")
    print("Welcome to the Text-Based Driving Game!")
    print("--------------------------------------------------")
    print("\nCommands:")
    print('- "go forward" or "f" to move the car forward.')
    print('- "turn left" or "l" to turn the car left.')
    print('- "turn right" or "r" to turn the car right.')
    print('- "quit" to exit the game.\n')
    print("Instructions:")
    print("- Follow traffic rules.")
    print("- Reach the destination to win.")
    print("\n--------------------------------------------------")

    # Set up the initial car position
    car_position = [0, 0]

    # Generate a random destination within the city
    destination = [random.randint(-10, 10), random.randint(-10, 10)]

    while True:
        # Get user input
        user_input = input("\nEnter a command: ").lower()

        if user_input == "go forward" or user_input == "f":
            car_position[1] += 1
            print("Car moved forward.")
        elif user_input == "turn left" or user_input == "l":
            car_position[0] -= 1
            print("Car turned left.")
        elif user_input == "turn right" or user_input == "r":
            car_position[0] += 1
            print("Car turned right.")
        elif user_input == "quit":
            print("Game over. You quit the game.")
            break
        else:
            print("Invalid command. Please try again.")

        # Check if the car reached the destination
        if car_position == destination:
            print("\nCongratulations! You reached the destination.")
            break

    print("\nThanks for playing!")

# Start the game
play_game()
