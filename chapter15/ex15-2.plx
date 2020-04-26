#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);

open STDOUT, '>', 'ls.out'
    or die "Cannot write to ls.out: System error msg:\n $!";
open STDERR, '>', 'ls.err'
    or die "Cannot write to ls.err: System error msg:\n $!";
chdir or die "Can't change to root dir: System error msg:\n $!";
exec 'ls', '-l' or die "Can't exec ls: $!";
