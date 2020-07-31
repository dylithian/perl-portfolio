# https://www.learn-perl.org/en/Loops
# I think the tutorial might actually be wrong with its first until loop example.
# They are. They say until loops run until the condition is FALSE, rather than running until it becomes true.
# See?:
$count = 1;
until($count > 10) {
    unless($count == 10) {
        print("$count, ");
    } else { print("$count.\n"); }
    $count++;
}

# Also can I just mention that it's silly that Perl doesn't have booleans but it has two types of conditionals and two types of loops, all to improve readability.
# Case and point:

if((2+2) == 4) {
    print("Math works.\n");
}

unless((2+2) eq "fish") {
    print("Math still works, you can keep your sanity, and no, we're not twelve here.\nTwo plus two does not equal fish. Go home.\n");
}

# I also just discovered that not only does Perl have two versions of every conditional and two types of every loops (aside from fors and foreaches)...
# It also has two versions of && and ||. It can also do {and} and {or}.
# For example:
$timesLooped = 1;
print("\nLoop Block Alpha:\n");
do {
    $slot = $timesLooped % 10;  # Where we are on the current line
    if($slot == 1) {        # We're at the start of the current line
        print("\n$timesLooped, ");
    } elsif($slot == 0) {   # We're at the end of the current line
        print("$timesLooped");
    } else {                # We're somewhere in between
        print("$timesLooped, ");
    }
    $timesLooped++;
} while((2+2 == 4) and ($timesLooped <= 100));

print("\n\nExercise:\n");

# Exercise, but run completely internally.
@numbers = (0..500);  # Generate the number list.

# Loop
foreach $number (@numbers) {
    # Do we even care
    if($number == 236) {
        print("$number\n");
        last;
    }
    # Test if even
    if($number % 2 == 0) {
        print("$number, ");
    }
}
