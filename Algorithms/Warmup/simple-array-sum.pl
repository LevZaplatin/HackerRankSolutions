#!/usr/bin/env perl

my $n = <STDIN>;

my @list = (split(' ',<STDIN>))[0 .. $n];

my $sum = 0;

for (@list) {
    $sum += $_;
}

print $sum;
