#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use File::Basename qw/ basename /;    # Import only basename function
use File::Spec qw/ catfile /;

my ( $source, $dest ) = @ARGV;
if ( -d $dest ) {
    my $basename = basename $source;
    $dest = File::Spec->catfile( $dest, $basename );
}
link $source, $dest
    or die "Can't link '$source' to '$dest': $!\n";
