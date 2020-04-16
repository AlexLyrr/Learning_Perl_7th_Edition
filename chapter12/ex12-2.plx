#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use File::Basename qw/ basename /;    # Import only basename function
use Time::Moment;
use List::Util qw( min max );

@ARGV > 0
    or die("At least one file name must be provided");
my $oldest_name = shift @ARGV;
my $oldest_age  = -M $oldest_name;

foreach (@ARGV) {
    my $age = -M;
    ( $oldest_name, $oldest_age ) = ( $_, $age )
        unless $age <= $oldest_age;
}

printf "The oldest file is %s, and its age is %.1f days old",
    $oldest_name,
    $oldest_age;
