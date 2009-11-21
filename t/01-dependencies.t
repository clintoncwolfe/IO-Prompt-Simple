
# -*-cperl-*-
use strict;
use warnings;

my %modules;
BEGIN {
    %modules =
      (
       'Test::More' => 0,
       'version'    => 0,
       'IO::Handle'    => 0,
       'Term::ReadKey' => 0,
       'POSIX' => 0,
       'Want'  => 0,
       'IO::Prompt' => '0.99.4',
      );

}

use Test::More tests => (scalar keys %modules);

BEGIN {
    foreach my $module (sort keys %modules) { # sort to keep test numbers consistent
        use_ok($module, $modules{$module});
    }
}


