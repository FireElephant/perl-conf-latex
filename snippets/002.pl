subtest 'foo' => sub {
    ok(1, 'bar');
};
# == v5.20 ==           == v5.42 ==
#     # Subtest: foo    # Subtest: foo
#     ok 1 - bar            ok 1 - bar
#     1..1                  1..1
# ok 1 - foo            ok 1 - foo
# 1..1                  1..1
