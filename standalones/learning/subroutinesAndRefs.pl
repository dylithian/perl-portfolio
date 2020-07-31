# https://www.learn-perl.org/en/Subroutines
# https://www.learn-perl.org/en/References

# This is really just performing the exercise on the subroutines tutorial page.
sub minInArray {
    my $arg0 = $_[0];
    my @array = @$arg0;

    my $lowest = $array[0];

    foreach my $value (@array) {
        if($value < $lowest) {
            $lowest = $value;
        }
    }

    return $lowest;
}
sub maxInArray {
    my $arg0 = $_[0];
    my @array = @$arg0;

    my $highest = $array[0];

    foreach my $value (@array) {
        if($value > $highest) {
            $highest = $value;
        }
    }

    return $highest;
}

my @carPrices = (33000,35000,29000,31000,25000,27000);  # This tutorial hates camelCase.
my @flightPrices = (720,450,1237,900,200,840,600,550);

my $minCar = minInArray(\@carPrices);
my $maxCar = maxInArray(\@carPrices);
my $diffCar = $maxCar - $minCar;

my $minFlight = minInArray(\@flightPrices);
my $maxFlight = maxInArray(\@flightPrices);
my $diffFlight = $maxFlight - $minFlight;

print("The prices of cars range from $minCar to $maxCar, which is a gap of $diffCar.\n");
print("The prices of flights range from $minFlight to $maxFlight, which is a gap of $diffFlight.\n");
