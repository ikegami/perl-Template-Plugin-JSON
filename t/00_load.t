#!perl -T

use strict;
use warnings;

use Test::More tests => 1;

BEGIN {
   require_ok( 'Template::Plugin::Filter::JSON' );
}

diag( "Testing Template::Plugin::Filter::JSON $Template::Plugin::Filter::JSON::VERSION" );
diag( "Using Perl $]" );

for (sort grep /\.pm\z/, keys %INC) {
   s{\.pm\z}{};
   s{/}{::}g;
   eval { diag(join(' ', $_, $_->VERSION || '<unknown>')) };
}
