package Business::Eway::RapidAPI::ShippingAddress;
{
    $Business::Eway::RapidAPI::ShippingAddress::VERSION = '0.01';
}

use Moo;
use MooX::Types::MooseLike::Base qw(:all);

has $_ => ( is => 'rw', isa => Str ) foreach (
    'ShippingMethod', 'FirstName', 'LastName', 'Street1',
    'Street2',        'City',      'State',    'PostalCode',
    'Country',        'Email',     'Phone',    'Fax'
);

1;

__END__

=pod

=head1 NAME

Business::Eway::RapidAPI::ShippingAddress

=head1 VERSION

version 0.01

=head1 AUTHOR

Fayland Lam <fayland@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Fayland Lam.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
