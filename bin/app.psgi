#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use Sympa::API::REST;

Sympa::API::REST->to_app;

use Plack::Builder;

builder {
    enable 'Deflater';
    Sympa::API::REST->to_app;
}



=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use Sympa::API::REST;
use Plack::Builder;

builder {
    enable 'Deflater';
    Sympa::API::REST->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use Sympa::API::REST;
use Sympa::API::REST_admin;

builder {
    mount '/'      => Sympa::API::REST->to_app;
    mount '/admin'      => Sympa::API::REST_admin->to_app;
}

=end comment

=cut

