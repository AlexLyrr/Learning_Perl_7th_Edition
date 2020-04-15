#!/usr/bin/perl
use utf8;
use warnings;
use Math::Trig;

@names   = qw (fred betty barney dino wilma pebbles bamm-bamm);
@numbers = <STDIN>;
foreach (@numbers) {
	print $names[$_] . "\n";
}