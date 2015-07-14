#!/usr/bin/perl -w
use strict;

use Storable;
use Data::Dumper;

$Storable::Eval = 1;
my $h = retrieve('cache/test2.tmpl.storable');

warn Dumper($h);