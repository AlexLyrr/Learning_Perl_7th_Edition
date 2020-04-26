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

say "Please enter a directory name";
chomp( my $dr = <STDIN> );            # Very important!
if ( $dr =~ m/\A\s*\z/ ) {
    chdir or die "cannot chdir to home directory: $!";
}
else {
    chdir "$dr" or die "cannot chdir to $dr: $!";
}

opendir my $dh, "." or die "Cannot open : $!";
my @sorted_dir_files = sort readdir $dh;
print join( "\n", @sorted_dir_files );
closedir $dh;
