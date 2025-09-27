use Test2::V0;
use v5.42;
package Calculator;
sub new ($class)          { bless {}, $class }
sub add ( $self, $x, $y ) { $x + $y }
1;

package main;
my $mock = Test2::Mock->new( class => 'Calculator' );
$mock->before( 'add' => sub ( $self, $x, $y ) { $self->{_c}++ } );

my $calc = Calculator->new();
$calc->add( 1, 1 ) for 1 .. 42;

is( $calc->{_c}, 42, 'before() counts add() calls' );
done_testing();
