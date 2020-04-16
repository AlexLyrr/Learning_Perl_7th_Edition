#!/usr/bin/perl
use utf8;
use warnings;
use Math::Trig;
use strict;

sub total {
    my $total = 0;
    foreach (@_) {
        $total += $_;
    }
    return $total;
}

print total( 1 .. 1_000 ) . "\n";
