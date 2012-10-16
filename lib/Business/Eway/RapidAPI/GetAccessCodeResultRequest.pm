package Business::Eway::RapidAPI::GetAccessCodeResultRequest;
{
    $Business::Eway::RapidAPI::GetAccessCodeResultRequest::VERSION = '0.01';
}

use Moo;
use MooX::Types::MooseLike::Base qw(:all);

has 'AccessCode' => ( is => 'rw', isa => Str );

1;

__END__

=pod

=head1 NAME

Business::Eway::RapidAPI::GetAccessCodeResultRequest

=head1 VERSION

version 0.01

=head1 AUTHOR

Fayland Lam <fayland@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Fayland Lam.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
