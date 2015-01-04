requires 'perl', '5.010001';

requires 'Test::EOF', '0.060';
requires 'Moose', '2.00';
requires 'namespace::autoclean';
requires 'Sub::Exporter::ForMethods';
requires 'Data::Section';

on test => sub {
    requires 'Test::More', '0.96';
    requires 'Test::Script';
    requires 'Test::Warnings', '0.009';
    requires 'Test::DZil';
    requires 'Test::Script';
    requires 'Path::Tiny';
    requires 'Test::Deep';
    requires 'File::pushd';
};
on build => sub {
    requires 'Dist::Zilla', '5.000';
};
