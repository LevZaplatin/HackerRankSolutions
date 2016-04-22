#!/usr/bin/env perl

my $size = (<STDIN> - 1);
my $left = 0;
my $right = 0;

for (0 .. $size) {
    chomp(my $line = <STDIN>);
    my @line = (split(' ',$line))[0 .. $size];
    $left += $line[$_];
    $right += $line[($size - $_)];
}

print abs($left-$right);
