use Test2::V0;
use v5.42;

my $positive_number = validator(sub (%params) {
    return defined $params{got} && $params{got} > 0;
});

is(42, $positive_number, 'Положительное число');
is(-5, $positive_number, 'Отрицательное число не пройдет');

done_testing();
