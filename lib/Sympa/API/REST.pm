package Sympa::API::REST;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    template 'index' => { 'title' => 'Sympa::API::REST' };
};

true;
