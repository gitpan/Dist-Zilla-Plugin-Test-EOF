use strict;
use warnings;
use Test::More;

# Generated by Dist::Zilla::Plugin::Test::EOF 0.01
use Test::EOF;

all_perl_files_ok({ minimum_newlines => 1, maximum_newlines => 4 });

done_testing();
