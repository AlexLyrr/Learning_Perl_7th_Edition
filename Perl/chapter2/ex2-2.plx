#!/usr/bin/perl
use utf8;
use warnings;
use Math::Trig;

print "Please give the radius of the circle\n";
$radius = <STDIN>;
$circumference = $radius * 2 * pi;
print "Circumference of a circle with a radius of 12.5 is equal to $circumference\n";