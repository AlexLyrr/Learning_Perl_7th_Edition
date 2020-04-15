#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

$_ = "beforematchafter";
if (/match/) {
    print "Matched: |$`<$&>$'|\n";    # the special match vars
}
else {
    print "No match: |$_|\n";
}