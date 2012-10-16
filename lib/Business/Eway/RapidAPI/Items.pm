package Business::Eway::RapidAPI::Items;
{
    $Business::Eway::RapidAPI::Items::VERSION = '0.01';
}

use Moo;
use MooX::Types::MooseLike::Base qw(:all);

has 'LineItem' => (
    is  => 'rw',
    isa => ArrayRef [ InstanceOf ['Business::Eway::RapidAPI::LineItem'] ],
    default => sub { [] }
);

package    # hidden from PAUSE
  Business::Eway::RapidAPI::LineItem;

use Moo;
use MooX::Types::MooseLike::Base qw(:all);

has $_ => ( is => 'rw', isa => Str )
  foreach ( 'SKU', 'Description', 'Quantity', 'UnitCost', 'Tax', 'Total' );

1;

1;

__END__

=pod

=head1 NAME

Business::Eway::RapidAPI::Items

=head1 VERSION

version 0.01

=head1 AUTHOR

Fayland Lam <fayland@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Fayland Lam.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
