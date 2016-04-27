#!/usr/bin/env perl

my ($length, $case) = split(' ', <STDIN>);
chomp($length);
chomp($case);
my @lane = split(' ', <STDIN>);
chomp(@lane);

for my $item (0 .. ($case-1)) {
    my ($start,$finish) = split(' ', <STDIN>);
    chomp($start);
    chomp($finish);
    my $type = 3;
    for my $road ($start .. $finish) {
        if ($lane[$road] < $type) { $type = $lane[$road]; }
        if ($type == 1) { last; }
    }
    print($type."\n")
}

