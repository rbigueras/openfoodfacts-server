#!/usr/bin/perl

use CGI::Carp qw(fatalsToBrowser);

use strict;
use utf8;

use Blogs::Config qw/:all/;
use Blogs::Store qw/:all/;
use Blogs::Index qw/:all/;
use Blogs::Display qw/:all/;
use Blogs::Tags qw/:all/;
use Blogs::Users qw/:all/;
use Blogs::Images qw/:all/;
use Blogs::Lang qw/:all/;
use Blogs::Mail qw/:all/;
use Blogs::Products qw/:all/;
use Blogs::Food qw/:all/;
use Blogs::Ingredients qw/:all/;
use Blogs::Images qw/:all/;
use Blogs::Lang qw/:all/;


use CGI qw/:cgi :form escapeHTML/;
use URI::Escape::XS;
use Storable qw/dclone/;
use Encode;
use JSON;

my $tagtype = $ARGV[0];
my $publish = $ARGV[1];

print "building taxonomy for $tagtype - publish: $publish\n";

build_tags_taxonomy($tagtype, $publish);


exit(0);
