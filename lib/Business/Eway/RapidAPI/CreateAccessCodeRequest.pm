package Business::Eway::RapidAPI::CreateAccessCodeRequest;
{
    $Business::Eway::RapidAPI::CreateAccessCodeRequest::VERSION = '0.01';
}

use Moo;
use MooX::Types::MooseLike::Base qw(:all);

use Business::Eway::RapidAPI::Customer;
use Business::Eway::RapidAPI::Items;
use Business::Eway::RapidAPI::Options;
use Business::Eway::RapidAPI::Payment;
use Business::Eway::RapidAPI::ShippingAddress;

has $_ => ( is => 'rw', isa => Str )
  foreach ( 'RedirectUrl', 'IPAddress', 'DeviceID', 'Method' );

has 'Customer' =>
  ( is => 'lazy', isa => InstanceOf ['Business::Eway::RapidAPI::Customer'] );
sub _build_Customer { Business::Eway::RapidAPI::Customer->new }
has 'Items' =>
  ( is => 'lazy', isa => InstanceOf ['Business::Eway::RapidAPI::Items'] );
sub _build_Items { Business::Eway::RapidAPI::Items->new }
has 'Options' =>
  ( is => 'lazy', isa => InstanceOf ['Business::Eway::RapidAPI::Options'] );
sub _build_Options { Business::Eway::RapidAPI::Options->new }
has 'Payment' =>
  ( is => 'lazy', isa => InstanceOf ['Business::Eway::RapidAPI::Payment'] );
sub _build_Payment { Business::Eway::RapidAPI::Payment->new }
has 'ShippingAddress' => (
    is  => 'lazy',
    isa => InstanceOf ['Business::Eway::RapidAPI::ShippingAddress']
);
sub _build_ShippingAddress { Business::Eway::RapidAPI::ShippingAddress->new }

1;

__END__

=pod

=head1 NAME

Business::Eway::RapidAPI::CreateAccessCodeRequest

=head1 VERSION

version 0.01

=head1 AUTHOR

Fayland Lam <fayland@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Fayland Lam.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
