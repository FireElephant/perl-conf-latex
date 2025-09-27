use Test2::V0;
is(
    [ 1, 2, 2, 3 ],
    bag {
        item 2;
        item 3;
        item 2;
        item 1;
    },
    'same multiset'
);
is(
    [ 1, 2, 2, 3 ],
    bag {
        item $_ for ( 2, 3, 2, 1 );
    },
    'same multiset'
);
done_testing();
