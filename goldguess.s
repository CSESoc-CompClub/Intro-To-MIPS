# This program gives a user 3 tries to guess the value of gold nuggets
# Written by: <write your name here and remove triangular brackets>

###############################################################################

# -- TODO: Register Notes (Tell what each register stores) --
# $t0 = 
# $t1 = 
# $t2 = 
# ...

# Constant Declarations
CORRECT_GUESS = 13			# TODO: Replace me with the amount of gold you want
NUM_ROUNDS = 3

###############################################################################
# [TASKS]

# [] (Task 1): Print No-Face's rules, found under 'game_setup'.

# [] (Task 2): Scan in a number representing guess for gold nugget amount

# [] (Task 3): Evaluate guess
# Note that if Sen guesses a non-positive integer, she can't make further guesses.
# - If guess is too low, tell Sen to guess higher
# - If guess is too high, tell Sen to guess lower
# - If guess is equal to correct amount, tell Sen she won!
# Tip: After we jump out of our loop to a condition, don't forget to jump back and resume your loop!

# [] (Task 4): Game Loop
# Now change it so that Sen has 3 guesses instead of 1
# If Sen guesses correct, we stop the loop and print a message saying she won!
# If Sen makes 3 wrong guesses, we print a losing message and end the game
# Adding labels makes loop implementation clearer, we usually have:
# 1. loop_init
# 2. loop_cond
# 3. loop_body
# 4. loop_increment
# 5. loop_end

###############################################################################

# [Main]
# - Where you write your program code
# - Note that every program needs a main: label

.text
main:
main__prologue:	# [DO NOT TOUCH]
	begin
	push	$ra

main__body:
	jal game_setup

game_start:
### [Game Loop] ###
# TODO (Task 4): Implement your loop

loop_body:
scan_guess:
	# TODO (Task 2): Scan in player guess
	
	# TODO (Task 3.1): Check and Evaluate the player's guess
	# Check for invalid guess

	# Evaluate guess

loop_end:

### [Game Conditions] ###
# TODO (Task 3.2): Fill out the conditions below
player_lose:
	# TODO: Fill out this condition

player_win:
	# TODO: Fill out this condition

invalid_guess:
	# TODO: Fill out this condition

too_big:
	# TODO: Fill out this condition
	
too_small:
	# TODO: Fill out this condition

main__end:
main__epilogue:		# [DO NOT TOUCH]
	pop		$ra
	end
	jr 		$ra

###############################################################################

# [Game Setup]
# - A function that prints the title card, rules and a message from No-Face!
# - Print your message from No-Face under the print_message label.
# - Feel free to edit some of the rule and title strings here and in .data

.text 
game_setup:
game_setup__prologue:	# [DO NOT TOUCH]
	begin
	push		$ra

game_setup__body:
print_title:
	li		$v0, 4
	la		$a0, title1_str
	syscall
	la		$a0, title2_str
	syscall
	la 		$a0, title3_str
	syscall
	la		$a0, title2_str
	syscall
	la		$a0, title1_str
	syscall
	
print_rules:
	# TODO (Task 1): 
	# - Print the game rules using the strings in .data
	# - Print your numRounds between rule3_str and rule4_str

print_start:
	li		$v0, 4
	la		$a0, divider_str
	syscall
	la		$a0, start_head_str
	syscall

game_setup__epilogue:	# [DO NOT TOUCH]
	pop		$ra
	end
	jr		$ra

###############################################################################

.data
# .data is the section where data is stored in main memory (RAM)


# STRINGS (feel free to add/customise the strings!!)
# Title Card Strings
title1_str:		.asciiz "-----------------------------\n"
title2_str:		.asciiz "|                           |\n"
title3_str:		.asciiz "|        GOLDGUESSER!!      |\n"

# Rule Strings
rule_head_str:		.asciiz "[RULES]\n\n"
rule1_str:		.asciiz "* Oh No! No-Face has eaten too much and\n has morphed into its terrifying monstrous form!\n\n"
rule2_str:		.asciiz "* He has presented Sen a handful of gold nuggets\n and has challenged you to guess the value it holds.\n\n"
rule3_str:		.asciiz "* Sen has "
rule4_str:		.asciiz " chances to guess it right.\n\n"
rule5_str:		.asciiz "* Guess correct and the gold nuggets shall be Sen's!\n Guess wrong and Sen will be gobbled up.\n\n"

# Interface Strings
divider_str:		.asciiz "-----------------------------\n\n"
start_head_str:		.asciiz "[START!]\n\n"
enter_guess_str:	.asciiz "Enter guess: "
invalid_guess_str:	.asciiz "Invalid guess: you can't have negative gold!\n\n"
too_high_str:		.asciiz "Too high!\n\n"
too_low_str:		.asciiz "Too low!\n\n"
win_str:		.asciiz "Yay! You win !!\n\n"
lose_str:		.asciiz "You lose :( better luck next time!\n\n"

# TODO: Write the string variables you want to print here