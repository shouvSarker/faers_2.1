use utf8;
package FaersDB::Result::MeddraHlgtPrefTerm;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

FaersDB::Result::MeddraHlgtPrefTerm

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

=head1 TABLE: C<meddra_hlgt_pref_term>

=cut

__PACKAGE__->table("meddra_hlgt_pref_term");

=head1 ACCESSORS

=head2 hlgt_code

  data_type: 'integer'
  is_nullable: 0

=head2 hlgt_name

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 hlgt_whoart_code

  data_type: 'varchar'
  is_nullable: 1
  size: 7

=head2 hlgt_harts_code

  data_type: 'integer'
  is_nullable: 1

=head2 hlgt_costart_sym

  data_type: 'varchar'
  is_nullable: 1
  size: 21

=head2 hlgt_icd9_code

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 hlgt_icd9cm_code

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 hlgt_icd10_code

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 hlgt_jart_code

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=cut

__PACKAGE__->add_columns(
  "hlgt_code",
  { data_type => "integer", is_nullable => 0 },
  "hlgt_name",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "hlgt_whoart_code",
  { data_type => "varchar", is_nullable => 1, size => 7 },
  "hlgt_harts_code",
  { data_type => "integer", is_nullable => 1 },
  "hlgt_costart_sym",
  { data_type => "varchar", is_nullable => 1, size => 21 },
  "hlgt_icd9_code",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "hlgt_icd9cm_code",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "hlgt_icd10_code",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "hlgt_jart_code",
  { data_type => "varchar", is_nullable => 1, size => 6 },
);

=head1 RELATIONS

=head2 meddra_hlgt_hlt_comps

Type: has_many

Related object: L<FaersDB::Result::MeddraHlgtHltComp>

=cut

__PACKAGE__->has_many(
  "meddra_hlgt_hlt_comps",
  "FaersDB::Result::MeddraHlgtHltComp",
  { "foreign.hlgt_code" => "self.hlgt_code" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 meddra_soc_hlgt_comps

Type: has_many

Related object: L<FaersDB::Result::MeddraSocHlgtComp>

=cut

__PACKAGE__->has_many(
  "meddra_soc_hlgt_comps",
  "FaersDB::Result::MeddraSocHlgtComp",
  { "foreign.hlgt_code" => "self.hlgt_code" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07047 @ 2018-04-04 16:57:02
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MUR+1V592bk+CWVH2Al4xg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
