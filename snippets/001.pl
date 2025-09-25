# lib/Test/More.pm
sub is ($$;$) {
    my $tb = Test::More->builder;

    return $tb->is_eq(@_);
}
