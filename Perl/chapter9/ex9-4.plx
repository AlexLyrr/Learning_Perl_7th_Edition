#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

my %filesToModify;
foreach (@ARGV) {
    $filesToModify{$_} = 1;
}
while (<>) {
    if (/\A## Copyright/) {
        delete $filesToModify{$ARGV};
    }
}
@ARGV = sort keys %filesToModify;
$^I = ".bak";
while (<>) {
    if (/\A#!/) {
        $_ .= "## Copyright (C) 2020 by Alex Lyrakis";
    }
    print;
}