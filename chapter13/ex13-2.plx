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

my @dir_files = sort <* .*>;                  # or glob '* .*'
print join( "\n", @dir_files );
