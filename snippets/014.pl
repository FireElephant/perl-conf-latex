use Test2::V0;
is(
    {foo => 'foo', bar => 'bar'},
    hash {
        field foo => 'foo';
        field bar => match qr/a/;
        end;
    },
    "Hash matches expectations"
);

# end() - forbid any extra keys; must be last in the hash block
# etc() - allow extra keys; must be last in the hash block

done_testing();
