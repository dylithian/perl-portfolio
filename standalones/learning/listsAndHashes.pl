# https://docs.google.com/viewer?url=https%3A%2F%2Fblob.perl.org%2Fbooks%2Fbeginning-perl%2F3145_Chap03.pdf
# Based on the icon I have in Atom, does Perl have an onion motif going on or something?

# Okay, I just had an idea while reading page 8. Since Perl counts negative array indices as counting backward, it might actually be really easy to reverse lists in Perl.
sub reverseMe {
    my $arrayRef = $_[0];
    my @array = @$arrayRef;

    my @builtArray = ();
    for(my $i = 0; $i < scalar(@array); $i++) {
        push(@builtArray,@array[-($i + 1)]);
    }

    return @builtArray;
}
# And then I discover Perl has a built-in reverse function. Great.

sub sayArray {
    use v5.10;
    my $arrayRef = $_[0];
    my @array = @$arrayRef;

    for(@array) {
        say("$_");
    }
}

my @ar = ((8..67),(5..30),9);
my @tediousStep = reverseMe(\@ar);

print("@tediousStep\n");

my @slice = @ar[(10..15)];      # Okay, I like how ranges can be used here. Pretty.

print("@slice\n");

print("\n");

my @digits = (0..9);
my @countdown = reverse(@digits);

print("@countdown\n");

my @negTest = @countdown[(-5..-1)];

print("@negTest\n");

sayArray(\@countdown);

print("\n");
# They've introduced the concept of a for-each with a range as the iterator.
my @toSearch = reverse(100..700);

for(1..$#toSearch) {
    print("$toSearch[$_] ");
    if($_ % 30 == 0) {
        print("\n");
    }
}

print("\n");

my %stuff = (
    "Head" => "Shoulders",
    "Knees" => "Toes",
);

print(%stuff);
print("\n");
$stuff{"These"} = "Those";
$stuff{"Bees"} = "Bones";
delete($stuff{"Head"});
print(%stuff);
print("\n");

# I really find it interesting/frustrating that Perl doesn't really care about function notation.
for(keys %stuff) {
    print "$_ ";
}

my $nom = "nom";

chomp($nom);
chomp($nom);
chomp($nom);     # nom nom
