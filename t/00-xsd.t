#! /usr/bin/perl

use strict;
use warnings;

use Test::More tests => 2;
use File::Spec;
use FindBin qw($Bin);
use lib File::Spec->catdir($Bin, qw|.. lib|);

use CF::Test::XSD;

my $host = 'http://xml_test.cono.org.ua/';

for my $uri ( qw/name tree/ ) {
	xsd_ok("$host$uri", File::Spec->catfile($Bin, 'xsd', "$uri.xsd"), "Check /$uri");
}
