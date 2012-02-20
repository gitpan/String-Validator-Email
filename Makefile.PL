use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'String::Validator::Email',
    AUTHOR              => q{John Karr <brainbuz@brainbuz.org>},
    VERSION_FROM        => 'lib/String/Validator/Email.pm',
    ABSTRACT_FROM       => 'lib/String/Validator/Email.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'gpl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
	'Email::Valid' => 0.187,
	'Email::Address' => 1.893,
	'Net::DNS' => 0,
	'Net::Domain::TLD' => 0,
	'Regexp::Common' => 2011121001,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'String-Validator-Email-*' },
);
