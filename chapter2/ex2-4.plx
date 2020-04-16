#!/usr/bin/perl
use utf8;
use warnings;
use Math::Trig;

print "Please give two numbers\n";
chomp($a = <STDIN>);
chomp($b = <STDIN>);
print "Product of $a and $b is equal to " . $a * $b . "\n";