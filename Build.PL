use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name => 'Catmandu::Store::Lucy',
    license => 'perl',
    dist_author => [
        'Nicolas Steenlant <nicolas.steenlant@ugent.be>'
    ],
    build_requires => {
        'Test::Exception' => 0,
        'Test::More' => 0,
    },
    requires => {
        'perl' => '5.10.1',
        'Catmandu' => '0.03',
        'Lucy' => '0.003',
        'Moo' => '1.00',
    },
    add_to_cleanup => [qw(
        Catmandu-Store-Lucy-*
    )],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script;
