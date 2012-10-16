package Business::eWAY::RapidAPI::Payment;
{
    $Business::eWAY::RapidAPI::Payment::VERSION = '0.02';
}

use Moo;
use MooX::Types::MooseLike::Base qw(:all);

has $_ => ( is => 'rw', isa => Str ) foreach (
    'TotalAmount',      'InvoiceNumber', 'InvoiceDescription',
    'InvoiceReference', 'CurrencyCode'
);

1;

__END__

=pod

=head1 NAME

Business::eWAY::RapidAPI::Payment

=head1 VERSION

version 0.02

=head1 AUTHOR

Fayland Lam <fayland@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Fayland Lam.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
