#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

while (<>) {    # take one input line at a time
    chomp;
    if (/\s\z/)
    {
        print "Matched: $_\@\n"; #we use @ as the marker character
    }
    else {
        print "No match\n";
    }
}