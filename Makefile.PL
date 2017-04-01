use strict;
use warnings;
use ExtUtils::MakeMaker;

# Normalize version strings like 6.30_02 to 6.3002,
# so that we can do numerical comparisons on it.
my $eumm_version = $ExtUtils::MakeMaker::VERSION;
$eumm_version =~ s/_//;

WriteMakefile(
    NAME             => 'Sympa::API::REST',
    AUTHOR           => q{Sympa Community <sympa-developpers@listes.renater.fr>},
    VERSION_FROM     => 'lib/Sympa/API/REST.pm',
    ABSTRACT_FROM    => 'lib/Sympa/API/REST.pm',
    ($eumm_version >= 6.3001
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'YAML'       => 0,
        'Dancer2'     => 0.205000,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Sympa-API-REST-*' },
    META_MERGE        => {
        resources => {
            repository  => 'https://github.com/sympa-community/sympa-service-rest',
            bugtracker => 'https://github.com/sympa-community/sympa-service-rest/issues',
            IRC => 'irc://irc.freenode.net/#sympa',
        },
    },
);
