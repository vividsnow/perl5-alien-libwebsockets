use strict;
use warnings;
use Test::More;
use Test::Alien;
use Alien::libwebsockets;

alien_ok 'Alien::libwebsockets';

diag 'install_type: ' . Alien::libwebsockets->install_type;
diag 'cflags: ' . Alien::libwebsockets->cflags;
diag 'libs: ' . Alien::libwebsockets->libs;

my $has_ext = Alien::libwebsockets->has_extensions;
if (Alien::libwebsockets->install_type eq 'share') {
    ok $has_ext, 'share install has extensions enabled';
}
diag "has_extensions: $has_ext";

done_testing;
