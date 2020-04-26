#!/usr/bin/perl
use v5.26;
use utf8;
use warnings;
use strict;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use IPC::System::Simple qw(system systemx capturex);

# Use system function to launch a child process.
# E.g. to invoke Unix date command
system 'date';
system 'touch', 'alyr_perl_test';

# You can use backquotes to invoke a command and
# capture the output as a string value
my @functions = qw{ int rand sleep length hex eof not exit sqrt umask };
my %about;
foreach (@functions) {
    $about{$_} = `perldoc -t -f $_`;
}

# print %about;
# Using exec will start the system command but will never return
exec 'date';

# print "Hello\n";

# Prefer to use IPC::System::Simple module which is more robust
# than the built-in system function.

# my $tarfile = 'something*wicked.tar';
# my @dirs    = qw(fred|flintstone <barney&rubble> betty );
# system 'tar', 'cvf', $tarfile, @dirs;
# systemx 'tar', 'cvf', $tarfile, @dirs;
# my @output = capturex 'tar', 'cvf', $tarfile, @dirs;

open DATE, 'date|' or die "cannot pipe from date: $!";
open MAIL, '|mail merlyn' or die "cannot pipe to mail: $!";