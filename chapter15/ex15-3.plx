#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

if ( 'date' =~ /\ASun|Sat/ ) {
    print "Go to play\n";
}
else {
    print "Go to work\n";
}
