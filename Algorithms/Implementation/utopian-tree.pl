#!/usr/bin/env perl

my $test = <STDIN>;
chomp $test;
for my $item (0 .. $test-1){
    my $number = <STDIN>;
    chomp $number;
    $number++;
    my $p = 0;
    my $x = 0;
    my $y = 0;
    $p = int($number/2);
    $x = (2**$p);
    if (($number % 2) == 0) {
        $y = ($x - 2);
    } else {
        $y = ($x - 1);
    }
    print(($x + $y)."\n");
}

