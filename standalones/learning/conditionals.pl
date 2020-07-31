# https://www.learn-perl.org/en/Conditional_Decisions
# Does anybody feel like .pl is less "short for Perl" and more "short for Poland"? I'm not even Polish.
# Also, seriously Larry? You couldn't be bothered to add an e in the else-if definition? Had to be elsif? I suppose we say it that way, but STILL, dude. Come on.

$booleanToy = 0;
if($booleanToy) { print("This statement will never be true.\n"); }

$booleanToy++;
if($booleanToy) {
    print("Does Perl actually gain anything by not having native boolean literals?\n");
    $booleanToy -= 1;
}

if($booleanToy) {
    print("I'm pretty sure this shouldn't run.\n");
} else {
    print("I wonder if the reason boolean \"types\" are missing is performance-related. I doubt it, but still.\n");
}

$booleanToy--;
$booleanToy ? print("Funny thing about Perl's condition logic, -1 is considered 'true'. Thought that was interesting.") : print("This shouldn't run either.");

# Can I triple-chain increment operators?
# Nope.

$booleanToy += 3;
print("\nPlaying around with booleans made the value $booleanToy at this point.\n");

unless($booleanToy == 8675309) {
    $insert = "(";
    $badJennyPun = "Is a phone call just a function call to the phone library?";
    $here = ")";

    print("$insert$badJennyPun$here\n");
}

print("\n");
$booleanToy = 0;

if(!$booleanToy) {
    print("I do like the <=> comparison operator though.\n");
}

if(5 <=> $booleanToy) {
    print("With how Perl's condition logic works here, I've just made a fancypants not-equal comparison.\n");
} else {
    print("I'm not sure how I feel about Perl.\n");
}

# Practice exercise, because this time I felt like it.
@family = ("John","Jacob","Jinkleheimer","Smith");
%shoe_color = (
    "John" => "muddy",
    "Jacob" => "bloody",
    "Smith" => "funny"
);
%shoe_size = (
    "John" => "big",
    "Jacob" => "tiny",
    "Smith" => "metal"
);

print("\n");

# Brave of them to ask us to do this listing exercise without for loops. Probably intentional given that the next lesson is about loops.
for ($member = 0; $member < scalar(@family); $member++) {
    $name = @family[$member];
    if( (!exists($shoe_color{$name})) || (!exists($shoe_size{$name}))) {
        print("$name doesn't wear shoes of any kind.\n");
    } elsif($name eq "Smith") {
        print("$name wears $shoe_color{$name} $shoe_size{$name} shoes.\n");
    } else {
        $adverb = $shoe_size{$name} eq "big" ? "really " : "";
        print("$name wears $adverb$shoe_size{$name} $shoe_color{$name} shoes.\n");
    }
}
