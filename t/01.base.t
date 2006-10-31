use strict;
use warnings;
use Test::Base;

plan tests => 1*blocks;

run {
    my $block = shift;
    my $class = $block->input;

    eval qq{
        package $class;
        use Sledge::Plugin::AutoTmplDirname;
    };
    die $@ if $@;

    is($class->tmpl_dirname, $block->expected, $block->name);
};

__END__

=== simple
--- input: Proj::Pages::Foo
--- expected: /foo

=== complex case
--- input: My::Proj::Pages::FooBar::BazBaz
--- expected: /foo_bar/baz_baz

