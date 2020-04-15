#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

my (%word_counter, @words, $key);
chomp( @words = <STDIN> );
foreach (@words) {
    $word_counter{$_}++;
}
printf( "%-10s => %10s\n", "word", "count" );
foreach $key ( sort keys %word_counter ) {
    printf( "%-10s => %10s\n", "$key", "$word_counter{$key}" );
}