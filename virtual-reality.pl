#!/usr/bin/perl

use strict;
use warnings;

# Define the game map
my @map = (
    ['+', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '+'],
    ['|', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '|'],
    ['|', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '|'],
    ['|', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '|'],
    ['|', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '|'],
    ['|', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '|'],
    ['|', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '|'],
    ['|', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '|'],
    ['|', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '|'],
    ['|', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '|'],
    ['+', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '+'],
);

# Define the player's starting position
my $player_x = 5;
my $player_y = 5;

# Main game loop
while (1) {
    # Print the map
    for (my $y = 0; $y <= $#map; $y++) {
        for (my $x = 0; $x <= $#{$map[$y]}; $x++) {
            if ($x == $player_x && $y == $player_y) {
                print "O";
            } else {
                print $map[$y][$x];
            }
        }
        print "\n";
    }

    # Get the player's input
    print "Enter a direction (up, down, left, right): ";
    my $input = <STDIN>;
    chomp($input);

    # Move the player
    if ($input eq "up" && $player_y > 1) {
        $player_y--;
    } elsif ($input eq "down" && $player_y < $#map - 1) {
        $player_y++;
    } elsif ($input eq "left" && $player_x > 1) {
        $player_x--;
    } elsif ($input eq "right" && $player_x < $#{$map[0]} - 1) {
        $player_x++;
    }
}
