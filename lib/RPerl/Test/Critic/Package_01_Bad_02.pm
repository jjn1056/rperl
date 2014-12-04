## no critic qwProhibitUselessNoCritic PodSpelling ProhibitExcessMainComplexity)  # DEVELOPER DEFAULT 1a: allow unreachable & POD-commented code; SYSTEM SPECIAL 5: allow complex code outside subroutines, must be on line 1
# [[[ TEST : 'ERROR ECVPAPC02' ]]]
# [[[ TEST : 'Perl::Critic::Policy::Miscellanea::ProhibitUnrestrictedNoCritic' ]]]
# [[[ HEADER ]]]
package RPerl::Test::Critic::Package_01_Bad_02;
use strict;
use warnings;
use RPerl;
our $VERSION = 0.001_000;

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls)  # USER DEFAULT 1: allow numeric values and print operator

# [[[ SUBROUTINES ]]]
our void $empty_sub = sub { 2; };

1;                  # end of class