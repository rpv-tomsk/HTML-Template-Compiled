#!/usr/bin/perl

use strict;
use lib qw(../lib);

use HTML::Template::Compiled;

my $opts = {
    loop_context_vars => 1,
    case_sensitive => 1,
    global_vars    => 1,
    filename       => 'test.tmpl',
    cache_dir      => './cache',
    cache          => 1,
    search_path_on_include=>1,
    #debug => 1,
};

my $tmpl = HTML::Template::Compiled->new(%$opts);
$tmpl->param(
       GLOBAL   => 'GloBalSTaCK!',
       ELEMENTS => [{TEMPLATE=>'test2.tmpl'}],
);
print $tmpl->output();
