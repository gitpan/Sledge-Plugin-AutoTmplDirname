package Sledge::Plugin::AutoTmplDirname;
use strict;
use warnings;
our $VERSION = 0.01;
use Carp;
use Sledge::Utils;

sub import {
    my $pkg = caller(0);

    no strict 'refs'; ## no critic
    *{"$pkg\::tmpl_dirname"} = sub {
        my $self = shift;
        return Sledge::Utils::class2prefix($self);
    };
}

1;

__END__

=head1 NAME

Sledge::Plugin::AutoTmplDirname - auto generate the template directory name

=head1 SYNOPSIS

    package Your::Pages;
    use Sledge::Plugin::AutoTmplDirname;

    # generate the tmpl_dirname method automaticaly.

=head1 DESCRIPTION

This module generates tmpl_dirname method.

Laziness++

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

=head1 AUTHOR

Tokuhiro Matsuno  C<< <tokuhiro __at__ mobilefactory.jp> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2006, Tokuhiro Matsuno C<< <tokuhiro __at__ mobilefactory.jp> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

