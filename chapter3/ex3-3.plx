#!/usr/bin/perl
use utf8;
use warnings;
use Math::Trig;

@names = <STDIN>;
@names_sorted = sort @names;
print @names_sorted;
chomp(@names_sorted);
print ("@names_sorted" . "\n");
