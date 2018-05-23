package Sympa::API::REST;
use Dancer2;
use Dancer2::Plugin::OpenAPIRoutes;

=encoding utf8

=head1 NAME

Sympa::API::REST - REST API for Sympa Mailinglist Manager

=cut

our $VERSION = '0.1';

OpenAPIRoutes();

get '/' => sub {
    template 'index' => { 'title' => 'Sympa::API::REST' };
};

=head1 AUTHORS

Sympa Community C<sympa-developpers@listes.renater.fr>

Stefan Hornburg (Racke), C<racke@linuxia.de>

=cut

true;
