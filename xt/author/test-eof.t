use strict;
use warnings;
use Test::More;

# Generated by Dist::Zilla::Plugin::Test::EOF 0.03
eval "use Test::EOF";
plan skip_all => 'Test::EOF required to test for correct end of file flag' if $@;

all_perl_files_ok({ minimum_newlines => 1, maximum_newlines => 4 });

done_testing();

