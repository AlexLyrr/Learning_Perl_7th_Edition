#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

my $test_string = "This is a test.";
my $substring   = "t";
my @where       = ();
my $where       = -1;
while (1) {
    $where = index( $test_string, $substring, $where + 1 );
    last if $where == -1;
    push @where, $where;
}
say "Positions are @where";
