# Define the starting position of the player
player_pos <- c(0, 0, 0)

# Define a function to display the current position
display_pos <- function(pos) {
  cat("You are now at position (", pos[1], ", ", pos[2], ", ", pos[3], ")\n")
}

# Define a function to move the player in a given direction
move_player <- function(direction, steps) {
  switch(direction,
         "up" = player_pos[3] <- player_pos[3] + steps,
         "down" = player_pos[3] <- player_pos[3] - steps,
         "north" = player_pos[2] <- player_pos[2] + steps,
         "south" = player_pos[2] <- player_pos[2] - steps,
         "east" = player_pos[1] <- player_pos[1] + steps,
         "west" = player_pos[1] <- player_pos[1] - steps)
}

# Define a function to simulate a step in the virtual reality
simulate_step <- function() {
  # Generate a random direction and number of steps
  directions <- c("up", "down", "north", "south", "east", "west")
  direction <- sample(directions, 1)
  steps <- sample(1:5, 1)
  
  # Move the player in the selected direction
  move_player(direction, steps)
  
  # Display the new position
  display_pos(player_pos)
}

# Start the virtual reality simulation
cat("Welcome to the virtual reality!\n")
display_pos(player_pos)
while (TRUE) {
  cat("Press enter to take a step, or type 'quit' to exit.\n")
  input <- readline()
  if (input == "quit") {
    break
  }
  simulate_step()
}
cat("Thanks for playing!\n")
