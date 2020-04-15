#!/usr/bin/perl
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
    else {
        print "Hi $name! I've seen: @people\n";
    }
    push( @people, $name );
}

# Test for subroutine greet

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");
