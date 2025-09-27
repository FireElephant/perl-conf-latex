is(
    bless( { foo => 'foo', bar => 'bar' }, 'My::Package' ),
    object {
        # Meta properties:
        prop blessed => 'My::Package';

        # Can check fields on underlying hash
        field foo => 'foo';
        field bar => match qr/a/;

        # Can check results of calling methods
        call foo => 'foo';

        # # Can check results of calling custom methods
        call sub { [ shift->list ] } => [ 'a', 'b', 'c' ];
    },
    "Object is as expected"
);
