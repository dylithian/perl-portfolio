# https://docs.google.com/viewer?url=https%3A%2F%2Fblob.perl.org%2Fbooks%2Fbeginning-perl%2F3145_Chap05.pdf
# Really not sure how I feel about Perl just tossing $_ into places

# So, admittedly I'm skimming this chapter a bit for two reasons:
# 1) While I recognize how useful regex is... I bloody hate them with a violent, burning passion.
# 2) I've done enough with regex in multiple other languages that my priority here is figuring how Perl has implemented this particular wheel
use 5.30.2;

# For a dynamic-type language, Perl sure does a lot of not-typing.
# Hey Perl, I need you to interpret this next bit as a regex. qr/nextbit/

my $patternOne = qr/./;

say 'match 1' if "anything" =~ $patternOne;

my $patternTwo = qr/ass/;    # Playing with this to play with the idea of online chat message profanity filtering

say 'match 2' if "never" =~ $patternTwo;
say 'match 3' if "you're an ass" =~ $patternTwo;
say 'match 4' if "assigns true recklessly" =~ $patternTwo;

# Note to self: Perl is powerful with command line text files. Shiny.

# To my understanding, there's also a substitution operator.
my $subMatchOne = qr/ass/;
my $nothing = '';

my $parseOne = "You're an ass.";
$parseOne =~ s/$subMatchOne/$nothing/g;
say "$parseOne";

my $parseTwo = "No, I'm not an ass. You're an ass. Asshole.";  # And then my code got profane.
$parseTwo =~ s/$subMatchOne/$nothing/g;
say "$parseTwo";

# The above doesn't catch the ass in asshole because it's capitalized.

my $subMatchTwo = qr/[aA]ss/;
my $parseThree = "No, I'm not an ass. You're an ass. Asshole.";
$parseThree =~ s/$subMatchTwo/$nothing/g;
say "$parseThree";  # . hole.

my $swearFilterOne = qr/fuck|shit|ass/i;
my $parseFour = "Fuck this shit, I'm out.";
$parseFour =~ s/$swearFilterOne/$nothing/g;
say "$parseFour";   # Tell this where you're going.

my $censor = '*';
my $parseFive = "Fuck this. I'm being fucked in the ass by this shitty bullshit. I'm out.";
$parseFive =~ s/$swearFilterOne/$censor x length($&)/ge;
say "$parseFive";

my $parseSix = "You know, you can really be an asshat, sometimes.";
$parseSix =~ s/$swearFilterOne/$censor x length($&)/ge;
say "$parseSix";
