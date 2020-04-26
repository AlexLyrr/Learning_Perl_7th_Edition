#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use File::Basename qw/ basename /;    # Import only basename function
use File::Spec;

my ( $source, $dest ) = @ARGV;
if ( -d $dest ) {
    my $basename = basename $source;
    $dest = File::Spec->catfile( $dest, $basename );
}

rename $source, $dest
    or die "Can't rename '$source' to '$dest': $!\n";
