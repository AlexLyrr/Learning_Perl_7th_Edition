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

unlink @ARGV or warn "Failed to unlink all files: $!\n";
