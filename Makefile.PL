use strict;
use warnings;
use inc::Module::Install;

name            'Sledge-Plugin-AutoTmplDirname';
all_from        'lib/Sledge/Plugin/AutoTmplDirname.pm';

requires 'Sledge::Utils' => 0;
build_requires 'Test::Base' => 0;

use_test_base;
auto_install;
WriteAll;

