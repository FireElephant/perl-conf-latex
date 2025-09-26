package MyResponse;
sub new { bless { code => $_[1] }, $_[0] };
sub code { $_[0]->{code} }; 1;

package MyAssert;
use Test::More;
sub is_http_200 {
    # local $Test::Builder::Level = $Test::Builder::Level + 1;
    Test::More::ok( $_[0]->code == 200, $_[1] );
}; 1;

use open qw(:std :utf8);
use Test::More;

MyAssert::is_http_200( MyResponse->new(500), 'home' );
done_testing();
#   Failed test 'home'
#   at script.pl line 9.
