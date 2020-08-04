# https://docs.google.com/viewer?url=https%3A%2F%2Fblob.perl.org%2Fbooks%2Fbeginning-perl%2F3145_Chap02.pdf

my $jenny = 04 + 04 + 067530 + 04 + 05;
my @jA = (0b0,0b1,0b10,0b11,0b100,0b101,0b110,0b111,0b1000,0b1001);
my $binaryJenny = $jA[8] + $jA[6] + $jA[7] + $jA[5] + $jA[3] + $jA[0] + $jA[9];

print($binaryJenny,"\n");       # Binary
print($jenny,"\n");             # Octal
print(8675309,"\n");            # Decimal
print(0x8675309,"\n");          # Hexadecimal

print("\n");

my $pointlessNovelDelimiter = qq^Quotations!^;

print($pointlessNovelDelimiter,"\n");

print("\n");

print("Quo" . "ta" x 12 . "tions!\n");    # Not super psyched for Perl using a dot as concatenation. I suppose I see why, but still.
print("Um, actually, it's not pronounced \"Rattata\", it's pronounced \"Ratta" . "ta" x 30 . "\".\n");

print("Fill in the blank: Na" . "na" x 15 . ", _____________!\n");
my $gimmeBatman = <STDIN>;
my $maybeBatman = substr($gimmeBatman,0,-1);
print("Look! It's $maybeBatman\!\n" x 7);

print("\n");
