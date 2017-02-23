# NAME

Catmandu::Store::Lucy - A searchable store backed by Lucy 

# VERSION

Version 0.0101

# SYNOPSIS

    use Catmandu::Store::Lucy;

    my $store = Catmandu::Store::Lucy->new(path => '/path/to/index/');

    my $book = $store->bag->add({ title => 'Advanced Perl' });

    printf "book stored as %s\n", $book->{_id};

    $store->bag->commit;

    $bag->get($id);

    # all bags are iterators
    $bag->each(sub { ... });
    $bag->take(10)->each(sub { ... });

    my $hits = $bag->search(query => 'perl');

    # hits is an iterator
    $hits->each(sub {
        say $_[0]->{title};
    });

    $bag->delete($id);
    $bag->delete_by_query(query => 'perl');
    $bag->delete_all;
    $bag->commit;

# SEE ALSO

[Catmandu::Store](https://metacpan.org/pod/Catmandu::Store)

# AUTHOR

Nicolas Steenlant, `<nicolas.steenlant at ugent.be>`

# LICENSE AND COPYRIGHT

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.
