#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use File::Basename qw/ basename /;    # Import only basename function
use Time::Moment;


my $filename = "ex12-2.plx";
# die "Oops! A file called '$filename' already exists.\n"
#     if -e $filename;
open( my $fh, "<", "$filename" )
    or die "Can't open < ex12-2.plx: $!";
warn "Config file is looking pretty old!\n"
    if -M $fh > 28;
