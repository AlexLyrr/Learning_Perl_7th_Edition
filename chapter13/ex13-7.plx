#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use File::Basename qw/ basename /;    # Import only basename function
use File::Spec qw/ catfile /;

if ( @ARGV > 2 ) {
    my ( $opt, $source, $dest ) = @ARGV;
    if ( $opt eq '-s' ) {
        symlink $source, $dest
            or warn "Can't symlinklink '$source' to '$dest': $!\n";
    }
}
else {
	my ($source, $dest ) = @ARGV;
    link $source, $dest
        or warn "Can't link '$source' to '$dest': $!\n";
}
