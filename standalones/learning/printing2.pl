# https://docs.google.com/viewer?url=https%3A%2F%2Fblob.perl.org%2Fbooks%2Fbeginning-perl%2F3145_Chap01.pdf
# I'm really liking the thorough look this "tutorial" is taking. (more of a textbook, which is right up my alley)
use warnings;   # I'm warning me.
use strict;     # Strictly speaking, I'm programming.

my @alphabet = ('a'..'z');
my @nalphabet = ('0'..'9');
my @capitalphabet = ('A'..'Z');

# Multiple printing!
print("@alphabet\n","@nalphabet\n","@capitalphabet\n");     # With all the newline escape characters, it really makes it seem like we're actually just using contractions. Don't mind me, I'm just print'n'.

# Unicode?
print("\x{2620} " x 13);     # This will raise a wide character warning, but I don't care.

print("\nI'm not going to do that exercise, but I know what it's getting at.\n");

print("I have never met anyone who calls escaping a character \"Backwhacking\".\n");

print<<EOF;
This is a here-document. This is a really strange way of doing stuff with strings that I never really expected a language to use.
I suppose there are other languages that do something similar. I remember HTML had something somewhat similar, vaguely.
EOF

my $batman = "Batman" x 30 . "\n";

print($batman x 30);
