# NAME

Mojo::Cache::Role::Exists - Check if keys exist in the cache

# STATUS

<div>
    <a href="https://travis-ci.org/srchulo/Mojo-Cache-Role-Exists"><img src="https://travis-ci.org/srchulo/Mojo-Cache-Role-Exists.svg?branch=master"></a>
</div>

# SYNOPSIS

    my $cache = Mojo::Cache->new->with_roles('+Exists');
    if ($cache->exists('key')) {
      ...
    }

# DESCRIPTION

[Mojo::Cache::Role::Exists](https://metacpan.org/pod/Mojo::Cache::Role::Exists) allows you to check if keys exist in the cache via the ["exists"](#exists) method.
Keys may not exist because they were never ["set" in Mojo::Cache](https://metacpan.org/pod/Mojo::Cache#set) or because they have been evicted from the cache.

# METHODS

## exists

    if ($cache->exists('key')) {
      ...
    }

Returns `true` if a cached value exists for the provided key, `false` otherwise.

# AUTHOR

Adam Hopkins <srchulo@cpan.org>

# COPYRIGHT

Copyright 2019- Adam Hopkins

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

- [Mojolicious](https://metacpan.org/pod/Mojolicious)
- [Mojo::Cache](https://metacpan.org/pod/Mojo::Cache)
- [Mojo::Cache::Role::Strict](https://metacpan.org/pod/Mojo::Cache::Role::Strict)
