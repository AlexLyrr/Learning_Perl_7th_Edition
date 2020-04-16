#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use File::Basename qw/ basename /;    # Import only basename function
use Time::Moment;

my $now = Time::Moment->now;
my $userTime = Time::Moment->new(
	year => $ARGV[0],
	month => $ARGV[1],
);
my $years = $userTime->delta_years( $now );
my $months = $userTime->delta_months( $now ) % 12;
printf "%d years and %d months\n", $years, $months;