use Test2::V0;

is(
    { foo => 'bar', true => 0, false => 1, deep => { x => 5 } },
    { foo => 'bat', true => T, false => F, deep => { x => 6 } },
    "Nothing will match"
);
# Failed test 'Nothing will match'
# at snippets/015.pl line 3.
# +-----------+-----+---------+-------+-----+
# | PATH      | GOT | OP      | CHECK | LNs |
# +-----------+-----+---------+-------+-----+
# | {deep}{x} | 5   | eq      | 6     |     |
# | {false}   | 1   | FALSE() | FALSE | 3   |
# | {foo}     | bar | eq      | bat   |     |
# | {true}    | 0   | TRUE()  | TRUE  | 3   |
# +-----------+-----+---------+-------+-----+

done_testing();
