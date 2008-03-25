use Test::More qw(no_plan);

use Config::INI::Access;

ok(7 == config->load('config.ini'), 'Reading initial config file');

ok(config->section1->key1 eq 'value 1', 'Initial value');

ok(1 == config->load('subconfig.ini'), 'Reading sub config file');

ok(config->section1->key1 eq 'sub value 1', 'Redefined value');
ok(config->section1->key2 eq 'value 2', 'Not redefined value');
