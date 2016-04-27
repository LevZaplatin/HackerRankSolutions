#!/usr/bin/env perl

$input = <STDIN>;
chomp $input;
my @string = split('',$input);
my $flag = substr($input,8,2);
my ($hour, $minute, $second) = split(':', substr($input,0,8));
if ($flag eq 'AM') {
    if ($hour == 12) { $hour = '00'; }
}
if ($flag eq 'PM') {
    if ($hour == 12) { $hour = 12;}
    else {
	   $hour += 12;
    }
}
if ($hour == 24) { $hour = '00';}
print join(':', ($hour, $minute, $second));

