#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

my $filename = "demo16.plx";
open my $fh, '<', $filename or die "Can't open file: $!";
my @strings = <$fh>;
my $pattern = "1";
while ("$pattern") {
    print "Please enter a match pattern\n";
    chomp( $pattern = <STDIN> );
    my @matches = eval { grep /$pattern/, @strings; };
    if ($@) {
	print "Error: $@";
	} else {
    my $no_matches = @matches;
    print "$no_matches lines matched, these are the following: @matches\n";
	}
}
