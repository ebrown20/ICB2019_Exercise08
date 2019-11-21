setwd("/Users/patriciabrown/BioComp/Exercise08/ICB2019_Exercise08")
# Guess my number game
# Generate random number 1 - 100
rand_num <- sample(1:100,1, replace = TRUE)

# Ask user to guess the number and read guess
print("I'm thinking of a number 1-100...")

# User can guess up to 10 times
for(i in 1:10) {
  guess <- readline(prompt="Guess: ")
  guess <- as.integer(guess)
  # Checks if random number is lower than the guess
  if(rand_num < guess) {
    print("Lower")
  }
  # Checks if random number is higher than the guess
  else if(rand_num > guess) {
    print("Higher")
  }
  # Last option is that they are equivalent
  else {
    print("Correct!")
    break
  }
}