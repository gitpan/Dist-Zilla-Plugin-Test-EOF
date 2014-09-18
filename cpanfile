requires 'perl', '5.12.0';

requires 'Test::EOF', '0.060';
requires 'Moose', '2.00';
requires 'namespace::autoclean';

on test => sub {
    requires 'Test::More', '0.96';
};
on build => sub {
	requires 'Dist::Zilla', '5.000';
	requires 'File::Slurp';
	requires 'Test::Script';
};
