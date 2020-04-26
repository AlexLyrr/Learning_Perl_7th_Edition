#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

my %last_name = qw{
    fred flintstone
    Wilma Flintstone
    Barney Rubble
    betty rubble
    Bamm-Bamm Rubble
    PEBBLES FLINTSTONE
};

my @ordered_names = sort by_first_and_last_names keys %last_name;
foreach (@ordered_names) {
	printf "$_ $last_name{$_}\n";
}

sub by_first_and_last_names {
    "\L$last_name{$a}" cmp "\L$last_name{$b}"
        or "\L$a" cmp "\L$b";
}
