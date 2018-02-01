package Alien::automake;

use strict;
use warnings;
use 5.008001;
use base qw( Alien::Base );

# ABSTRACT: Build or find automake
# VERSION
# ALIEN SYNOPSIS
# ALIEN DESCRIPTION

=head1 CAVEATS

This module is currently configured to I<always> do a share install.  This is because C<system> installs for this alien are not reliable.  Please see 
this issue for details: L<https://github.com/plicease/Alien-autoconf/issues/2> (the issue is for autoconf, but relates to automake as well).  The good
news is that most of the time you shouldn't need this module I<unless> you are building another alien from source.  If your system provides the package
that is targeted by the upstream alien I recommend using that.  If you are packaging system packages for your platform then I recommend making sure the
upstream alien uses the system library so you won't need to install this module.

=head1 SEE ALSO

=over 4

=item L<alienfile>

=item L<Alien::Build>

=item L<Alien::Build>

=item L<Alien::Autotools>

=back

=cut

1;
