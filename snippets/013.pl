use Test2::V0;
is(
    [ 1, 'Ivanov Ivan', {foo => 'bar'}, undef ],
    subset {
        item hash{
            field foo => E();
        },
    },
    'найден один элемент - хэш с ключом foo'
);
# T()     - true
# F()     - false (value must exist)
# D()     - defined
# U()     - undefined
# DF()    - defined but false
# E()     - exists
# L()     - defined and has length
# DNE()   - (D)oes (N)ot (E)xist
# FDNE()  - combination of F() and DNE()

done_testing();
