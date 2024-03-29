use utf8;
package FaersDB::Result::Generic;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FaersDB::Result::Generic

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<generic>

=cut

__PACKAGE__->table("generic");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 512

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 512 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<generic_name>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("generic_name", ["name"]);

=head1 RELATIONS

=head2 brands

Type: has_many

Related object: L<FaersDB::Result::Brand>

=cut

__PACKAGE__->has_many(
  "brands",
  "FaersDB::Result::Brand",
  { "foreign.genericid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 drugs

Type: has_many

Related object: L<FaersDB::Result::Drug>

=cut

__PACKAGE__->has_many(
  "drugs",
  "FaersDB::Result::Drug",
  { "foreign.genericid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07047 @ 2018-04-04 16:57:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hnaroiAXwJaRdjcY7cptVw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
