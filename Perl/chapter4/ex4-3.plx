#!/usr/bin/perl
use utf8;
use warnings;
use Math::Trig;
use strict;

sub average {
    my $average = 0;
    foreach (@_) {
        $average += $_;
    }
    $average /= @_;
    return $average;
}

sub above_average {
    my $average             = average(@_);
    my @numbersAboveAverage = ();
    foreach (@_) {
        if ( $_ > $average ) {
            push( @numbersAboveAverage, $_ );
        }
    }
    return @numbersAboveAverage;
}

# Test for the aboce subroutines

my @fred = above_average( 1 .. 10 );
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average( 100, 1 .. 10 );
print "\@barney is @barney\n";
print "(Should be just 100)\n";

use v5.26;
use utf8;
use warnings;
use Math::Trig;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);


sub greet ($name) {
    state $NOPeople = 0;
    state @people;
    $NOPeople++;
    if ( $NOPeople == 1 ) {
        print "Hi $name! You are the first one here!\n";
    }
    elsif ( @people == 1 ) {
        print "Hi $name! @people is also here!\n";
    }
    else {
        print "Hi $name! @people are also here!\n";
    }
    push( @people, $name );
}

# Test for subroutine greet

greet("Uknown1");
greet("Uknown2");
greet("Uknown3");
