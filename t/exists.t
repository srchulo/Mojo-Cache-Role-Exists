use Mojo::Base -strict;
use Test::More;
use Mojo::Cache;

my $cache = Mojo::Cache->new(max_keys => 1)->with_roles('+Exists');

ok !$cache->exists('key'), 'exists returns false';

$cache->set(key => 'value');
ok $cache->exists('key'), 'exists returns true';

note 'Test cache eviction';
ok !$cache->exists('other_key'), 'exists returns false';

$cache->set(other_key => 'other_value');
ok $cache->exists('other_key'), 'exists returns true';
ok !$cache->exists('key'), 'exists returns false';

done_testing;
