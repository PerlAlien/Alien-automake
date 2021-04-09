# Alien::automake ![linux](https://github.com/PerlAlien/Alien-automake/workflows/linux/badge.svg) ![macos](https://github.com/PerlAlien/Alien-automake/workflows/macos/badge.svg) ![windows](https://github.com/PerlAlien/Alien-automake/workflows/windows/badge.svg)

Build or find automake

# SYNOPSIS

In your script or module:

```perl
use Alien::automake;
use Env qw( @PATH );

unshift @PATH, Alien::automake->bin_dir;
```

# DESCRIPTION

This distribution provides automake so that it can be used by other
Perl distributions that are on CPAN.  It does this by first trying to
detect an existing install of automake on your system.  If found it
will use that.  If it cannot be found, the source code will be downloaded
from the internet and it will be installed in a private share location
for the use of other modules.

# CAVEATS

This module is currently configured to _always_ do a share install.  This is because `system` installs for this alien are not reliable.  Please see
this issue for details: [https://github.com/plicease/Alien-autoconf/issues/2](https://github.com/plicease/Alien-autoconf/issues/2) (the issue is for autoconf, but relates to automake as well).  The good
news is that most of the time you shouldn't need this module _unless_ you are building another alien from source.  If your system provides the package
that is targeted by the upstream alien I recommend using that.  If you are packaging system packages for your platform then I recommend making sure the
upstream alien uses the system library so you won't need to install this module.

# SEE ALSO

- [alienfile](https://metacpan.org/pod/alienfile)
- [Alien::Build](https://metacpan.org/pod/Alien::Build)
- [Alien::Build](https://metacpan.org/pod/Alien::Build)
- [Alien::Autotools](https://metacpan.org/pod/Alien::Autotools)

# AUTHOR

Author: Graham Ollis <plicease@cpan.org>

Contributors:

Roy Storey (KIWIROY)

# COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
