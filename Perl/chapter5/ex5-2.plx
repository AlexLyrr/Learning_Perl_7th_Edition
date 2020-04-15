#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use Math::Trig;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

print "Please enter a list of strings on separate lines\n";
chomp( my @strings = <STDIN> );

# printf "12345678901234567890\n" . "%20s\n" x @strings, @strings; # Dbg
printf "%20s\n" x @strings, @strings;

