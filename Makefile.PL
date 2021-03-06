# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v6.005.
use strict;
use warnings;

use 5.008001;

use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  "ABSTRACT" => "A CPAN client",
  "AUTHOR" => "Tatsuhiko Miyagawa <miyagawa\@bulknews.net>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "Menlo",
  "EXE_FILES" => [
    "script/cpanm-menlo"
  ],
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.008001",
  "NAME" => "Menlo",
  "PREREQ_PM" => {
    "CPAN::Common::Index" => "0.006",
    "CPAN::DistnameInfo" => 0,
    "CPAN::Meta" => "2.132830",
    "CPAN::Meta::Check" => 0,
    "CPAN::Meta::Requirements" => 0,
    "CPAN::Meta::YAML" => 0,
    "Capture::Tiny" => 0,
    "Class::Tiny" => "1.001",
    "Digest::SHA" => 0,
    "Exporter" => 0,
    "File::Temp" => 0,
    "File::Which" => 0,
    "File::pushd" => 0,
    "Getopt::Long" => 0,
    "HTTP::Tiny" => "0.054",
    "HTTP::Tinyish" => "0.04",
    "IPC::Run3" => 0,
    "JSON::PP" => 0,
    "Module::Build::Tiny" => 0,
    "Module::CPANfile" => 0,
    "Module::CoreList" => 0,
    "Module::Metadata" => 0,
    "Parse::CPAN::Meta" => 0,
    "Parse::PMFile" => "0.26",
    "String::ShellQuote" => 0,
    "Win32::ShellQuote" => 0,
    "local::lib" => 0,
    "version" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => "0.96"
  },
  "VERSION" => "1.9003",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "CPAN::Common::Index" => "0.006",
  "CPAN::DistnameInfo" => 0,
  "CPAN::Meta" => "2.132830",
  "CPAN::Meta::Check" => 0,
  "CPAN::Meta::Requirements" => 0,
  "CPAN::Meta::YAML" => 0,
  "Capture::Tiny" => 0,
  "Class::Tiny" => "1.001",
  "Digest::SHA" => 0,
  "Exporter" => 0,
  "File::Temp" => 0,
  "File::Which" => 0,
  "File::pushd" => 0,
  "Getopt::Long" => 0,
  "HTTP::Tiny" => "0.054",
  "HTTP::Tinyish" => "0.04",
  "IPC::Run3" => 0,
  "JSON::PP" => 0,
  "Module::Build::Tiny" => 0,
  "Module::CPANfile" => 0,
  "Module::CoreList" => 0,
  "Module::Metadata" => 0,
  "Parse::CPAN::Meta" => 0,
  "Parse::PMFile" => "0.26",
  "String::ShellQuote" => 0,
  "Test::More" => "0.96",
  "Win32::ShellQuote" => 0,
  "local::lib" => 0,
  "version" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
