package HelperA;
use Test::More;
sub init { Test::More->builder->no_diag(1) }  # меняет глобал
1;
package HelperB;
use Test::More;
sub init { diag 'я ожидал diag'; } # поведение уже изменено
1;

package main;
use Test::More;
HelperA::init();
HelperB::init();
ok 1;
done_testing();
# ok 1
# 1..1
