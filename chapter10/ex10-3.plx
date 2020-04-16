#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

# Set new environment variables
$ENV{ZERO}      = 0;
$ENV{EMPTY}     = '';
$ENV{UNDEFINED} = undef;

my $max       = 0;
my $maxLength = 0;
for ( keys %ENV ) {
    $maxLength = length($_) if length($_) > $max;
}
print $maxLength;
printf( "%-${maxLength}s => %${maxLength}s\n", "key", "value" );
foreach my $key ( sort keys %ENV ) {
    printf( "%-${maxLength}s => %${maxLength}s\n",
        $key, $ENV{$key} // "(undefined)" );
}