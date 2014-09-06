use strict;
use warnings;
use Test::More;
use Test::DZil;
use Test::Script;
use File::Slurp;

my $test = Builder->from_config(
                {
                     dist_root => 'corpus/a',
                },
                {
                     add_files => {
                         'source/dist.ini' => simple_ini(['Test::EOF', { maximum_newlines => 3 }]),
                     },
                },
           );

$test->build;
my $file = $test->tempdir->subdir('build')->subdir('xt')->subdir('author')->file('test-eof.t');
my $tempdir = $test->tempdir;
my $cont = File::Slurp::read_file($file);

ok(-e $file, 'test file exists');

script_compiles(''. $file->relative, 'check test compiles');
script_runs('' . $file->relative, 'check test runs');




done_testing;
