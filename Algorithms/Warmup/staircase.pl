#!/usr/bin/env perl

$n = <STDIN>;
chomp $n;

for my $line (1 .. $n) {
    printf("%s%s\n", " "x($n-$line), "#"x$line);
}
