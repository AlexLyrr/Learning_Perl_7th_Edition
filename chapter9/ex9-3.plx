#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

my $in = $ARGV[0];
my ($in_fh, $out_fh);
if ( !defined $in ) {
    die "Usage: $0 filename";
}
my $out = $in;
$out =~ s/(\.\w+)?$/.out/;
if ( !open $in_fh, '<', $in ) {
    die "Can't open '$in': $!";
}
if ( !open $out_fh, '>', $out ) {
    die "Can't write '$out': $!";
}
while (<$in_fh>) {
    s/Fred/\0/gi;
	s/Wilma/Fred/gi;
	s/\0/Wilma/g;
    print $out_fh "$_";
}
