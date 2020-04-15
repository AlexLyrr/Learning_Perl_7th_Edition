#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

while (<>) {
	if (/(\S)\1/) {
		print;
	}
}
