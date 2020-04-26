#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

my @tmp = stat "README.md";
print("@tmp\n");
my $fh;
eval { open $fh, '<', "ex16-1.plx" or die "Can't open file: $!"};
print "The error is $@" if ($@);

my @odd_numbers = grep { $_ % 2 } 1..100;
print "@odd_numbers\n";

my @matching_lines = grep { /\bsay\b/i } <$fh>;
print "@matching_lines\n";
