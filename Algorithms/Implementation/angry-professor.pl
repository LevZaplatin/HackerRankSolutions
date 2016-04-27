#!/usr/bin/env perl

my $test = <STDIN>;
chomp($test);
for (0 .. ($test-1)) {
    my $count = 0;
    chomp(my ($N, $K) = split(' ', <STDIN>));
    my @students = (split(' ', <STDIN>))[0 .. ($N-1)];
    chomp(@students);
    for (@students) {
        if ($_ <= 0) { $count++;  }
        if ($count >= $K) { last; }
    }
    if ($count >= $K) { 
        print("NO\n");
    } else {
        print("YES\n");
    }
}
