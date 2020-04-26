#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use File::Basename qw/ basename /;    # Import only basename function
use Time::Moment;
use Cwd;

my @some_numbers = ( 5, 13, 7, 21, 25, 245, 134, 136, 134 );
my @result = sort by_number @some_numbers;
print "Unsorted version is @some_numbers\nSorted version is @result\n";

my %score = (
    "barney"    => 195,
    "fred"      => 205,
    "dino"      => 30,
    "bamm-bamm" => 195,
);
my @winners = sort by_score_and_name keys %score;
print "@winners\n";

sub by_number {

    # a sort subroutine, expect $a and $b
    if    ( $a < $b ) {-1}
    elsif ( $a > $b ) {1}
    else              {0}
}

sub by_score { $score{$b} <=> $score{$a} }

sub by_score_and_name {
    $score{$b} <=> $score{$a}    # by descending numeric score
        or $a cmp $b             # code point order by name
}
