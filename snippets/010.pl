use Test::More;

is_deeply([1,2,3], [1,2,3]);

# Failed test: order of elements
is_deeply(
    { users => [qw/alice bob/] },
    { users => [qw/bob alice/] }
);

# Failed test: extra field
is_deeply(
    { age => 30, id => 123 },
    { age => 30 }
);
done_testing();
