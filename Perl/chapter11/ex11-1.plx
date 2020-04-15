#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use File::Basename qw/ basename /;    # Import only basename function
use Module::CoreList;

my $max       = 0;
my $maxLength = 0;
my %modules = %{ $Module::CoreList::version{5.024} };
print join "\n", keys %modules;