#!/usr/bin/env perl

$test = <STDIN>;
chomp $test;

sub generate {
    my $number = shift();
    my $out = -1;
    if (($number % 3) == 1) {
        $out = '5'x($number-10).'3'x10;
    } elsif ( ($number % 3) == 2) {
        $out = '5'x($number-5).'3'x5;
    } else {
        $out = '5'x$number;
    }
    if (length($out) > $number) {
        $out = '-1';
    }
    return $out
}

for my $item (0 .. ($test-1)) {
    $number = <STDIN>;
    chomp($number);
    print(generate($number)."\n");
}
