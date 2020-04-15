#!/usr/bin/perl
use utf8;
use warnings;
use Math::Trig;

print "Please give a string and a number\n";
$str = <STDIN>;
chomp($n = <STDIN>);
print $str x $n;