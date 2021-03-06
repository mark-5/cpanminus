use strict;
use Test::More;
use xt::Run;

plan skip_all => "skip on < 5.12" if $] < 5.012;

{
    run "MIYAGAWA/CPAN-Test-Dummy-Perl5-StaticInstall-0.01.tar.gz";
    like last_build_log, qr/x_static_install/;
    like last_build_log, qr/Successfully installed CPAN-Test-Dummy-Perl5-StaticInstall/;
}

{
    my $local_lib = "$ENV{PERL_CPANM_HOME}/perl5";
    run_L "MIYAGAWA/CPAN-Test-Dummy-Perl5-StaticInstall-0.01.tar.gz";
    like last_build_log, qr/x_static_install/;
    like last_build_log, qr/Successfully installed CPAN-Test-Dummy-Perl5-StaticInstall/;
    unlike last_build_log, qr/Working on Module::Build::Tiny/;
    unlike last_build_log, qr/Running Build\.PL/;
}

{
    my $local_lib = "$ENV{PERL_CPANM_HOME}/static-install";
    require local::lib;
    local::lib->setup_env_hash_for($local_lib);
    run "MIYAGAWA/CPAN-Test-Dummy-Perl5-StaticInstall-0.01.tar.gz";
    like last_build_log, qr!Installing $local_lib/lib/perl5/CPAN/Test/Dummy/Perl5/StaticInstall\.pm!;
}

done_testing;

