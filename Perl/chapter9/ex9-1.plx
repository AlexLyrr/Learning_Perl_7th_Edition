#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

my $what = "fred|barney";
while (<>) {
	if (m/($what){3}/) {
		print "(Matched)$_";
	}
}