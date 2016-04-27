#!/usr/bin/env perl

my $test = <STDIN>;
chomp $test;

sub find_number {
    my $x = shift();
    my $y = shift();
    my $c = 1;
    my $s = 1;
    my $out = 0;
    while ($s <= $y) {
        $s = $c**2;
        if ($s >= $x && $s <= $y) {
            $out++;
        }
        $c++;
    }
    return $out;
}

for my $item (0 .. ($test-1)) {
    my ($x,$y) = split(' ',<STDIN>);
    chomp($x);
    chomp($y);
    print(find_number($x,$y)."\n");
}

