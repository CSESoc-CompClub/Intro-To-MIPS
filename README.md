# Intro To MIPS - Comp Club Autumn School Exercises

## Big Project - goldguess.s

Oh No! No-Face has eaten too much and has morphed into its terrifying monstrous form!
He has presented Sen a handful of gold nuggets and has challenged you to write a program in MIPS assembly to allow Sen to guess the value it holds.

Sen has 3 chances to guess it right. Guess correct and the gold nuggets shall be Sen's. Guess wrong and Sen will be gobbled up.

You have been tasked by No-Face to write a program in his beloved language MIPS to determine if Sen is awarded the gold or becomes dinner. At each guess, tell Sen if her guess is either too low or too high.

If she guesses it within 3 tries, congrats she wins! If she runs out of tries, you know what's coming...

The tasks are commented out in *goldguess.s*. We will be completing each section as we cover a new topic!


## Topical Exercises

### 1. **Printing - print_message.s**
  - print_message.s -- Write a program that prints a message to the screen
  - [ADD ON] Print multiple messages to the screen
  
    Sample Output:
  
        Hello World
        This is my First MIPS Program!

### 2. **Scanning - math_fun.s || math_cheating.s**
  - math_fun.s -- Write a program that scans in two numbers and return some facts about them!
  
    Sample Output:
    
        First Number: 12          # scanned in 12
        Second Number: 5          # scanned in 5
        Sum: 17                   # num1 + num2
        Diff: 7                   # num1 - num2
        Mult: 60                  # num1 * num2
        I like 12, and also 5.
        
  - [CHALLENGE] math_cheating.s -- Write a program that scans in three numbers and returns the sum of its arithmetic sequence up to the first n terms!
    - Recall the arithmetic sequence has formula a<sub>n</sub> = a<sub>1</sub> + (n - 1) • d.
    - Note that the sum of arithmetic sequence has formulas S = (n / 2) • (2a + (n - 1) • d), where:
      - n = total number of terms in the sequence,
      - a = first term of the sequence,
      - d = common difference between terms.

    Sample Output:
        
        Enter a: 1                                # scanned in a = 1
        Enter d: 2                                # scanned in d = 2
        Enter n: 30                               # scanned in n = 30
        Sum of first 30 terms of sequence: 900

### 3. **If Statements - movie_day.s || arrange_three.s** 
  - movie_day.s -- Write a program that takes in a number between 1 - 7, denoting the days of the week, and depending on the number, give a movie for the corresponding day of the week
  - Note that if the number is less than 1 or more than 7, your program should print 'Invalid Day!'
  - Come up with a different movie for each day! Bonus points if all are from Studio Ghibli :D
  
    Sample Output:
    ```
        Enter day: 1                              # scanned in 1
        Movie To Watch: Kiki's Delivery Service
    ```
    ```
        Enter day: 5                              # scanned in 5
        Movie To Watch: Grave of the Fireflies
    ```
    ```
        Enter day: 10
        Invalid Day!
    ```
        
  - [CHALLENGE] arrange_three.s -- Write a program that scans in three numbers and prints them in ascending order, separated by a comma and a space

    Sample Output:
    ```
        Enter first number: 44
        Enter second number: 10
        Enter third number: -2 
        Arranged Numbers: -2, 10, 44
    ```
    ```
        Enter first number: 42
        Enter second number: 3
        Enter third number: 42
        Arranged Numbers: 3, 42, 42
    ```

### 4. **Loops - seq.s || find_factors.s**
  - seq.s -- Write a program that takes in three numbers, the start of the sequence, the end of the sequence and the step (increment) of the sequence and print out all numbers between 'start' and 'stop' (inclusive), while incrementing the number by 'step' each time.
  - Note that your program does not have to account for negative steps!

    Sample Output:
    ```
        Enter start: 1                              # scanned in 1
        Enter stop: 10                              # scanned in 10
        Enter step: 2                               # scanned in 2
        1
        3
        5
        7
        9
    ```
    
  - [CHALLENGE] find_factors.s -- Write a program that scans in a positive integer and prints all the factors that it has.
  - [ADD ON] Print an error message **if** the scanned number is negative
  
    Sample Output:
    ```
        Enter number: 16                           # scanned in 16
        Factors of 16:
        1
        2
        4
        8
        16
    ```
    ```
        Enter number: 2                            # scanned in 2
        Factors of 2:
        1
        2
    ```
    ``` [ADD ON]
        Enter day: -34                             # scanned in -34
        Invalid number!
    ```
    ``` [ADD ON]
        Enter day: 0                               # scanned in 0
        Invalid number!
    ```
