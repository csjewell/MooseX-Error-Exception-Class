use Test::More tests => 2;

use strict;

BEGIN {
    use strict;
    $^W = 1;
    $| = 1;

    ok(($] > 5.008000), 'Perl version acceptable') or BAIL_OUT ('Perl version unacceptably old.');
    use_ok( 'MooseX::Error::Exception::Class' );
    diag( "Testing MooseX::Error::Exception::Class $MooseX::Error::Exception::Class::VERSION" );
}

