#!/usr/bin/perl

use strict;
use lib qw(../lib);

use HTML::Template::Compiled;

my $opts = {
    loop_context_vars => 1,
    case_sensitive => 1,
    global_vars    => 1,
    filename       => 'test2.tmpl',
    cache_dir      => './cache',
    cache          => 1,
    search_path_on_include=>1,
    #debug => 1,
};

my $tmpl = HTML::Template::Compiled->new(%$opts);
#GLOBAL should be empty, but it does not!
print $tmpl->output();
