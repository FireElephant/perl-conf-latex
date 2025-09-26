use Test2::V0;

package MyClass;
sub new  { bless {}, shift }
sub save {1}
1;

package main;
my $obj = MyClass->new();
can_ok( $obj, qw(new save) );
isa_ok( $obj, 'MyClass' ); # отличается если больше 2-х аргументов

done_testing();
