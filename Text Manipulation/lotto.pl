use 5.30.2;
use FindBin;

my $filePath = $FindBin::Bin . '/data/lottodata.csv';

open(my $DATA,'<',$filePath) or die $!;

my @numbers = ();

while(<$DATA>) {
    my $pattern = qr/[,]([\d ]+)[,]/;
    push(@numbers,$1) if $_ =~ $pattern;
}

close($DATA);

my @parsed = ();

foreach(@numbers) {
    my $pattern = qr/([\d]+) ([\d]+) ([\d]+) ([\d]+) ([\d]+) ([\d]+)/;
    my $perlIsDumbRef = [$1,$2,$3,$4,$5,$6];
    push(@parsed,$perlIsDumbRef);
}

my @deRef = @$parsed[0];

say "$deRef[0]";
