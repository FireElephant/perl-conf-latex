# Set the mode BEFORE anything loads Test::Builder
use open ':std', ':encoding(utf8)';
use Test::More;

# OR
# Modify the filehandles
my $builder = Test::More->builder;
binmode $builder->output,         ":encoding(utf8)";
binmode $builder->failure_output, ":encoding(utf8)";
binmode $builder->todo_output,    ":encoding(utf8)";

# OR (if Test::Builder used Test2)
use Test2::Plugin::UTF8;
