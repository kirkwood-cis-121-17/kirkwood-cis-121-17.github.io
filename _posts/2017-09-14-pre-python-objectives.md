---
layout: post
title: "pre-python-objectives"
comments: true
categories:
 -
---

# Objectives

- Be able to read instructions and visualize their execution
- Identify which pieces of information are variables
- Break the problem down into smaller problems (functions)
- Connect inputs and outputs



How can we find a number in a list of numbers?

[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];

Students guess, and I will tell them if it is higher or lower

Now we've discovered binary search, and we can write the pseudo code


1.	let min = 1 and max = n
2.	 guess the average of max and min rounded down
3.	if you guessed the number stop
4.	if you guess was too low set min 1 larger than guess
5.	if guess was too high set max to be one smaller than guess
6.	step 2

1. Let min = 0 and max = n-1.
2. Compute guess as the average of max and min, rounded down (so that it is an integer) .
3. If array[guess] equals target, then stop. You found it! Return guess.
4. If the guess was too low, that is, array[guess] < target, then set min = guess + 1.
5. Otherwise, the guess was too high. Set max = guess - 1.
6. Go back to step 2.

Talk about selection sort and how we need to do swap and find min


Talk about how can we count lines in files
How can we leverage this to count how many python files there are
Connect the programs together





