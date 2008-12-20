#!/usr/bin/perl

package KiokuX::User::ID;
use Moose::Role;

use namespace::clean -except => 'meta';

with qw(KiokuDB::Role::ID);

sub kiokudb_object_id { "user:" . shift->id }

has id => (
    isa => "Str",
    is  => "ro",
);

__PACKAGE__

__END__

=pod

=head1 NAME

KiokuX::User::ID - L<KiokuDB::Role::ID> integration for user objects

=head1 SYNOPSIS

	with qw(KiokuX::User::ID);

=head1 DESCRIPTION

This role provides an C<id> attribute for user objects, and self registers in
the L<KiokuDB> directory with the object ID C<user:$user_id>.

Using this role implies that user IDs are immutable.

=head1 METHODS

=over 4

=item kiokudb_object_id

Implements the required method from L<KiokuX::User::ID> by prefixing the C<id>
attribute with C<user:>.

=back

=head1 ATTRIBUTES

=over 4

=item id

This is the user's ID in the system. It is not the object ID, but the object ID is derived from it.

=back

=cut

