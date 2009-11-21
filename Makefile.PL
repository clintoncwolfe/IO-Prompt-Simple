use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile
  (
   NAME                => 'IO::Prompt::Simple',
   AUTHOR              => 'Clinton Wolfe <CLWOLFE@cpan.org>',
   VERSION_FROM        => 'lib/IO/Prompt/Simple.pm',
   ABSTRACT_FROM       => 'lib/IO/Prompt/Simple.pm',
   PL_FILES            => {},
   PREREQ_PM => {
                 'Test::More' => 0,
                 'version'    => 0,
                 'IO::Handle'    => 0,
                 'Term::ReadKey' => 0,
                 'POSIX' => 0,
                 'Want'  => 0,
                 'IO::Prompt' => '0.99.4',
                },
   dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
   clean               => { FILES => 'IO-Prompt-Simple-*' },
  );

