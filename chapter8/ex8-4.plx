#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

while (<>) {    # take one input line at a time
    chomp;
    if (/(?<first_captured_group>\b\w*a\b)/) {
        print "Matched: |$`<$&>$'|\n";    # the special match vars
    	print "Word contains $+{first_captured_group}.\n"
    }
    else {
        print "No match: |$_|\n";
    }
}
