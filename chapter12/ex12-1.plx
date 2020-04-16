#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use File::Basename qw/ basename /;    # Import only basename function
use Time::Moment;

sub file_rights( $filename ) {
    print "Filename: $filename | ";
    if ( !-e $filename ) {
        print "Doesn't exist\n";
        return;
    }
    if ( -r $filename ) {
        print "Readable: Y | ";
    }
    else {
        print "Readable: N | ";
    }
    if ( -w _ ) {
        print "Writable: Y | ";
    }
    else {
        print "Writable: N | ";
    }
    if ( -x _ ) {
        print "Executable: Y | ";
    }
    else {
        print "Executable: N | ";
    }
    if ( -r _ ) {
        print "Readable: Y | ";
    }
    else {
        print "Readable: N | ";
    }
    print "\n";
}

foreach my $filename (@ARGV) {
    &file_rights($filename);
}
