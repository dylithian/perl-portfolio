# https://www.learn-perl.org/en/Operators
# Since I already know how to program, I'm skipping a lot of these.

# Range creation and repetition.
@abc = ('a'..'z');
$abc3 = "@abc\n" x 3;

print("$abc3\n");

# Exercise:
print("Exercise:\n\n");

$a = 5;
print("\$a = $a\n");
$a += 6;
print("\$a = $a\n");
$a *= 2;
print("\$a = $a\n");
print("\$a = ".++$a."\n");      # I decided to be a fancypants for this one.
$a -= 9;
print("\$a = $a\n");    # The tutorial instructs us to "Substract" here. Ha ha.
$a /= 7;
print("\$a = $a\n");
