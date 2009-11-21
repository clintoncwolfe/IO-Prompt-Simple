use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'IO::Prompt::Simple',
    license             => 'perl',
    dist_author         => 'Clinton Wolfe <CLWOLFE@cpan.org>',
    dist_version_from   => 'lib/IO/Prompt/Simple.pm',
    requires => {
                 'Test::More' => 0,
                 'version'    => 0,
                 'IO::Handle'    => 0,
                 'Term::ReadKey' => 0,
                 'POSIX' => 0,
                 'Want'  => 0,
                 'IO::Prompt' => '0.99.4',
    },
    add_to_cleanup     => [ 'IO-Prompt-Simple-*' ],
);

$builder->create_build_script();
