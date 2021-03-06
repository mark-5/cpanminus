# NAME

Menlo - A CPAN client

# DESCRIPTION

Menlo is a code name for _cpanm 2.0_, developed with the goal to
replace [cpanm](https://metacpan.org/pod/cpanm) and its backend with a more flexible, extensible and
easier to use APIs.

# COMPATIBILITY

Menlo is developed within [cpanm](https://metacpan.org/pod/cpanm) git repository at the `menlo`
branch. It keeps the developer test suite intact, which means all of
the features implemented as of cpanm 1.7032 are supposed to work in
Menlo with `cpanm-menlo` command line tool and its backend,
Menlo::CLI::Compat.

Menlo::CLI::Compat started off as a copy of App::cpanminus::script,
but will go under a big refactoring to extract all the bits out of
it. Hopefully the end result will be just a shim and translation layer
to interpret command line options.

A new client, possibly called `menlo`, and object oriented APIs will
be added later in the development phase.

# MOTIVATION

cpanm has been a popular choice of CPAN package installer for many
developers, because it is lightweight, fast, and requires no
configuration in most environments.

Meanwhile, the way cpanm has been implemented (one God class, and all
modules are packaged in one script with fatpacker) makes it difficult
to extend, or modify the behaviors at a runtime, unless you decide to
fork the code or monkeypatch its hidden backend class.

cpanm also has no scriptable API or hook points, which means you have
to work around its behavior by writing a shell wrapper, or parsing the
output of its standard out or a build log file.

Menlo will keep the best aspects of cpanm, which is dependencies free,
configuration free, lightweight and fast to install CPAN modules. At
the same time, it's impelmented as a standard perl module, available
on CPAN, and you can extend its behavior by either using its modular
interfaces, or writing plugins to hook into its behaviors.

# FAQ

- Dependencies free? I see many prerequisites in Menlo.

    Right now, Menlo is in the development phase and is released as a
    standard perl module distribution, and has a few runtime
    dependencies. Actually most of these modules were consumed by cpanm as
    well, and they aren't new.

    When I decide it's ready for production and to replace cpanm, I'll
    make a fatpacked version of the script, which will bundle all the
    dependencies into one file, just like cpanm does.

- Is Menlo a new name for cpanm?

    Right now it's just a code name, but I'm comfortable calling this a
    new package name for cpanm 2's backend.

# AUTHOR

Tatsuhiko Miyagawa <miyagawa@bulknews.net>

# COPYRIGHT

2010- Tatsuhiko Miyagawa

# LICENSE

This software is licensed under the same terms as Perl.

# SEE ALSO

[cpanm](https://metacpan.org/pod/cpanm)
