#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use Time::Local;

my @files = <* .*>;
foreach (@files) {
    my ( $at, $mt ) = map {
        my ( $year, $month, $day ) = ( localtime($_) )[ 5, 4, 3 ];
        $year  += 1900;
        $month += 1;
        sprintf '%4d-%02d-%02d', $year, $month, $day;
    } (stat)[ 8, 9 ];
    printf "%-20s %10s %10s\n", $_, $at, $mt;
}

# There is another way to solve this:
# use POSIX qw(strftime);
# foreach my $file ( glob( '*' ) ) {
# my( $atime, $mtime ) = map {
# strftime( '%Y-%m-%d', localtime($_) );
# } (stat $file)[8,9];
# printf "%-20s %10s %10s\n", $file, $atime, $mtime;
# }
