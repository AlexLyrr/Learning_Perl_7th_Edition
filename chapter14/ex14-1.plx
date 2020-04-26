#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

my @some_numbers
    = ( 17, 1000, 04, 1.50, 3.14159, -10, 1.5, 4, 2001, 90210, 666 );
my @sorted_numbers = sort {$a <=> $b} @some_numbers;
foreach (@sorted_numbers) {
	printf "%20g\n", $_;
}