package Business::Eway::RapidAPI::Options;
{
    $Business::Eway::RapidAPI::Options::VERSION = '0.01';
}

use Moo;
use MooX::Types::MooseLike::Base qw(:all);

has 'Option' => (
    is  => 'rw',
    isa => ArrayRef [ InstanceOf ['Business::Eway::RapidAPI::Option'] ],
    default => sub { [] }
);

package    # hidden from PAUSE
  Business::Eway::RapidAPI::Option;

use Moo;
use MooX::Types::MooseLike::Base qw(:all);

has 'Value' => ( is => 'rw', isa => Str );

1;

__END__

=pod

=head1 NAME

Business::Eway::RapidAPI::Options

=head1 VERSION

version 0.01

=head1 AUTHOR

Fayland Lam <fayland@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Fayland Lam.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
