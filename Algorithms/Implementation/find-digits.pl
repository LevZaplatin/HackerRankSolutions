#!/usr/bin/env perl

my $test = <STDIN>;
chomp $test;
for my $item (0 .. ($test-1)) {
    my $number = <STDIN>;
    chomp $number;
    my $c = 0;
    for my $u (0 .. length($number)) {
        if (substr($number,$u,1) > 0) {
            if (($number % substr($number,$u,1)) == 0) {
                $c++;
            }
        }
    }
    print($c."\n");
}
