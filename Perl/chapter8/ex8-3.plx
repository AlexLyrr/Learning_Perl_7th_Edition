#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

while (<>) {    # take one input line at a time
    chomp;
    if (/(\b\w*a\b)/) {
        print "Matched: |$`<$&>$'|\n";    # the special match vars
    	print "\$1 contains $1.\n"
    }
    else {
        print "No match: |$_|\n";
    }
}
