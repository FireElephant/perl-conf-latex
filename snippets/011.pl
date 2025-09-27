use Test::More;
use Test::Deep;

# Порядок не важен, кратности учитываются.
cmp_deeply( [ 1, 2, 2, 3 ], bag( 2, 3, 2, 1 ), 'same multiset' );

# Порядок не важен, элементы уникальны.
cmp_deeply( [ 1, 2, 2, 3 ], set(qw/1 2 3/), 'same set' );

# хеш-должен содержать как минимум указанные пары.
cmp_deeply( {a=>1, b=>2}, superhashof({a=>1}), 'superhash ok' );

# сравнение по регулярному выражению.
cmp_deeply('Ivan Ivanov', re(qr/^Ivan /), 'string matches regex');

done_testing();
