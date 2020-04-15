#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use Math::Trig;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

print reverse <>;

# Note about the line-input operator:
# 
# The <> is actually a list with all the lines from all the files
# given as input when the program was executed.
#
# In scalar context, the <> operator returns a line from the list.
# E.g. while (defined($line = <>)) -> we ask for a scalar item from
# the <> operator, so it gives as a line. Similarly by writing
# while (<>), the is scalar context since the while condition 
# expects a scalar, not a list. The end of file is equal to a 
# scalar value of undef, so the condition fails and the while loop
# stops.
#
# In list context, the <> operator returns a list with all the lines
# of all the invocation arguments given during the execution
# of the program..