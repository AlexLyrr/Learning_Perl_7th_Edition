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

sub file_rights( $filename ) {
    print "$filename\n" if -r -w -o $filename;
    
}

die "Please provide at least one file!\n" unless @ARGV;

foreach my $filename (@ARGV) {
    &file_rights($filename);
}
