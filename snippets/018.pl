use Test2::V0;

ok( warns { warn 'a' }, "the code warns" );
ok( !warns {1},         "The code does not warn" );
is( warns { warn 'a'; warn 'b' }, 2, "got 2 warnings" );

ok( no_warnings {1}, "code did not warn" );
like(
    warning { warn 'xxx' },
    qr/xxx/,
    "Got expected warning"
);
is(
    warnings { warn "a\n"; warn "b\n" },
    [ "a\n", "b\n" ],
    "Got 2 specific warnings"
);

done_testing();
