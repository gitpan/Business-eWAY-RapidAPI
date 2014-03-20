package Business::eWAY::RapidAPI::Options;
$Business::eWAY::RapidAPI::Options::VERSION = '0.05';
use Moo;
use MooX::Types::MooseLike::Base qw(:all);

has 'Option' => (
    is  => 'rw',
    isa => ArrayRef [ InstanceOf ['Business::eWAY::RapidAPI::Option'] ],
    default => sub { [] }
);

package    # hidden from PAUSE
  Business::eWAY::RapidAPI::Option;

use Moo;
use MooX::Types::MooseLike::Base 'Str';

has 'Value' => ( is => 'rw', isa => Str );

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Business::eWAY::RapidAPI::Options

=head1 VERSION

version 0.05

=head1 AUTHOR

Fayland Lam <fayland@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Fayland Lam.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut