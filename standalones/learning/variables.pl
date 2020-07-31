# https://www.learn-perl.org/en/Variables_and_Types
# I find it interesting that the above tutorial calls =...= blocks 'embedded documentation' and not block comments, as I've so often heard them called.
# I wonder if that means Perl has some sort of automatic documentation generation protocol. Probably not, but I can dream.
print "This little string had no parentheses.\n";   # This is an interesting shorthand.
print("This little string had two.\n");             # This makes my neurotic side happy.

$line = "\n";
$a = "Perl is dynamically typed.";
$b = "Does Perl have a typing spec like TypeScript?";
$c = "I like how Perl made single and double quotes mean something different.";

print("$line");

print("$a$line$b$line$c$line");     # Did that mess of interpolated variables hurt? Good.
print("Oh my god! Perl actually enforces semicolons! Freedom from JavaScript at last!$line");
print("Ohhh... So THAT's why they use a dollar sign. \$ for Scalar. Nifty.$line");

print("$line");

@array = (
    "I have so many questions.",
    "First of all, does Perl play nice with whitespace?",
    "Second, why does Perl use parentheses for array declarations?",
    "Thirdly, I feel like using \$ to refer to individual array values (implying they're scalars) is both brilliant and somewhat confusing.",
    "Oh, and while we're on the subject, is there a version of print that automatically terminates with a new line character?"
);

# I don't know what the method of getting the length of an array type is.
# Is it len()? Let's find out!
# Also side note, apparently I was right about =...= blocks. I got a syntax error for trying to put one here.

for (my $iterator = 0; $iterator < scalar(@array); $iterator++) {
    # Wasn't len(). Did length() work?
    # Nope. Not length() either.
    # scalar() huh? Fascinating.
    print("$array[$iterator]$line");
}

print("$line");

# Hashes next, evidently.
%brown = (
    "One" => "Still not sold on the parentheses-for-everything principle.",
    "Two" => "I'm glad that Perl is civilized when it comes to whitespace.",
    "Three" => "Still wondering if there's a fancy-pants print function, or whether I'm going to have to wait until I know how to define functions."
);

print("I feel like key iteration is a subject for Perl's for-each implemetation.$line");
print("And before someone tries to crucify me, the whole point of defining a newline VARIABLE was to remind myself that print doesn't add one automatically.$line");
print("$line");
print("I find it interesting that with all the hash-to-scalar and array-to-scalar conversion, there's basically only one namespace but suddenly three contexts.$line");
print("$brown{\"One\"}$line");
print("$brown{\"Two\"}$line");
print("$brown{\"Three\"}$line");
print("I get the feeling that using string interpolation for static hash value references is more tedious than need be.$line");
print("I also find it interesting that hash value interpolation is where curly braces get used.$line");
print("Does that imply that the reason we're using parentheses for everything is something to do with mixing content? As in half-hash half-array values?$line");
print("Personally I think that would be stupid, but it's possible.$line");
