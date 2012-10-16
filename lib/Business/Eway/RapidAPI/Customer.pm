package Business::Eway::RapidAPI::Customer;
{
    $Business::Eway::RapidAPI::Customer::VERSION = '0.01';
}

use Moo;
use MooX::Types::MooseLike::Base qw(:all);

has $_ => ( is => 'rw', isa => Str ) foreach (
    'TokenCustomerID', 'Reference',      'Title',
    'FirstName',       'LastName',       'CompanyName',
    'JobDescription',  'Street1',        'Street2',
    'City',            'State',          'PostalCode',
    'Country',         'Email',          'Phone',
    'Mobile',          'Comments',       'Fax',
    'Url',             'CardNumber',     'CardName',
    'CardExpiryMonth', 'CardExpiryYear', 'CardStartMonth',
    'CardStartYear',   'CardIssueNumber'
);

1;

__END__

=pod

=head1 NAME

Business::Eway::RapidAPI::Customer

=head1 VERSION

version 0.01

=head1 AUTHOR

Fayland Lam <fayland@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Fayland Lam.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
