#!/usr/bin/env perl

my $size = (<STDIN> - 1);
chomp $size;
my @number = (split(' ',<STDIN>))[0 .. $size];
chomp @number;

my @result = (0,0,0);

for my $number (@number) {
    if ($number > 0) { $result[0]++; }
    elsif ($number < 0) { $result[1]++; }
    else { $result[2]++; }
}
for my $result (@result) {
    printf("%.6f\n", ($result / ($size + 1)));
}

