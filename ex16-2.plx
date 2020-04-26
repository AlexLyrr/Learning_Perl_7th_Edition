#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

foreach (<* .*>) {
    printf "%20s %20s %20s\n", $_, (stat($_))[8, 9];
}
