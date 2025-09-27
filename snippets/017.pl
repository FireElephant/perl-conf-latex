use Test2::V0;

is(
    dies { die 'xxx' },
    match qr/xxx/,
    "Got exception"
);

like(
    dies { die 'xxx' },
    qr/xxx/,
    "Got exception"
);

ok(lives { 1 }, "did not die");

done_testing();
