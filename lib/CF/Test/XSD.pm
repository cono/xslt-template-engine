package CF::Test::XSD;

use strict;
use warnings;

use LWP::Simple;
use XML::LibXML;

use base 'Test::Builder::Module';

our @EXPORT = qw(xsd_ok);

my $CLASS = __PACKAGE__;


sub xsd_ok {
	my ($url, $xsd, $name) = @_;
	my $tb = $CLASS->builder;

	eval {
		my $xml = get($url);
		die "Could not fetch $url" unless defined $xml;

		my $parser = XML::LibXML->new(
			expand_entities => 0,
			load_ext_dtd    => 0,
			validation      => 0,
		);

		my $schema = XML::LibXML::Schema->new(
			location => $xsd
		);

		my $doc = $parser->parse_string($xml);
		$schema->validate($doc);
	};

	warn $@ if $@;

	$tb->ok(!$@, $name);
}

1;

