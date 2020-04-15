#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

my $rn = int( 1 + rand 100 );
my $dbg = $ENV{DEBUG} // 1;
print "The secret number is $rn.\n" if $dbg;
while (1) {
    print "Please choose a number from 1 to 100\n";
    chomp( my $num = <STDIN> );
    if ($num =~ m/quit|exit|\A\s*\z/i) {
    	print "Sorry, you did not make it, the secret number was $rn. The program will now exit.\n";
    	last;
    }
    elsif ($num == $rn) {
    	print "That's it!Bye!\n";
    	last;
    }
    print "Too high\n" if ( $num > $rn );
    print "Too low\n"  if ( $num < $rn );
   
}
