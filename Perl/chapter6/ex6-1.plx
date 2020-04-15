#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

# DB with names and family names
my %family_name = (
    fred   => 'flintstone',
    barney => 'rubble',
    wilma  => 'flintstone',
);
# Actual program
print "What is your name?\n";
chomp (my $name = <STDIN>);
if ( exists $family_name{$name} ) {
    print "Your family name is $family_name{$name}\n"

}
else {
    print "I am sorry but your name is not in our DB\n";
}
