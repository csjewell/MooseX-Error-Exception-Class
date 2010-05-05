use strict;
use warnings;
use Module::Build 0.33;

my $builder = Module::Build->new(
    module_name         => 'MooseX::Error::Exception::Class',
    license             => 'perl',
    dist_author         => 'Curtis Jewell <csjewell@cpan.org>',
    dist_version_from   => 'lib/MooseX/Error/Exception/Class.pm',
    create_license      => 1,
    create_readme       => 1,
    create_makefile_pl  => 'passthrough',
    configure_requires => {
        'Module::Build'    => 0.33,
    },
    requires => {
        'perl'             => 5.008001,
        'parent'           => 0.223,
        'Moose'            => 0.88,
        'Exception::Class' => 1.29,
    },
    build_requires => {
        'Test::More'       => 0.61,
    },
    add_to_cleanup      => [ 'MooseX-Error-Exception-Class-*' ],
    meta_merge     => {
        resources => {
            homepage => 'http://csjewell.comyr.com/perl/',
            bugtracker =>
                'http://rt.cpan.org/NoAuth/Bugs.html?Dist=MooseX-Error-Exception-Class',
            repository  => 'git://github.com/csjewell/MooseX-Error-Exception-Class.git'
        },
    },
);

$builder->create_build_script();
