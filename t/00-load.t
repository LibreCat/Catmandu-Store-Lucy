#!perl -T

use strict;
use warnings;
use Test::More;

my $pkg;
BEGIN {
    $pkg = 'Catmandu::Store::Lucy';
    use_ok $pkg;
}

require_ok $pkg;

done_testing 2;
