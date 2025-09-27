use Test2::V0;
use v5.42;
package Calculator;
sub new ($class)          { bless {}, $class }
sub add ( $self, $x, $y ) { $x + $y }
1;

package main;
my $mock = mock 'Calculator' => (
    add      => [ multiply => sub ( $self, $x, $y ) { $x * $y } ],
    override => [ add      => sub {42} ],
    set      => [ hello    => sub {"Hello"} ]
);
my $calc = Calculator->new();
is( $calc->add( 1, 1 ),      42,      'mock add' );
is( $calc->multiply( 2, 2 ), 4,       'mock multiply' );
is( $calc->hello(),          'Hello', 'mock multiply' );
done_testing();
