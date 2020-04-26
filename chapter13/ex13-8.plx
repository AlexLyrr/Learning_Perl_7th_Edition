#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use File::Basename qw/ basename /;    # Import only basename function
use File::Spec qw/ catfile /;

my $fred  = "Yabba dabba doo!";
my @where = ();
my $where = length $fred;
print $where;
my $mineral = substr( "Fred J. Flintstone", 8, 5 );    # gets "Flint"
my $rock = substr "Fred J. Flintstone", 13, 1000;      # gets "stone"
print $mineral;
substr( $fred, index( $fred, "dabba" ), 0, "doi " );

sub big_money {
    my $number = sprintf "%.2f", shift @_;

    # Add one comma each time through the do-nothing loop
    1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;

    # Put the dollar sign in the right place
    $number =~ s/^(-?)/$1\$/;
    $number;
}

my $number = 5300234.2345523;
print "\n" . big_money($number) . "\n";