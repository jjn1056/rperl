# [[[ TEST : 'ERROR ECVPARP00' ]]]
# [[[ TEST : 'Unexpected token:  use constant' ]]]
# [[[ HEADER ]]]
package RPerl::Test::Constant::Class_00_Bad_17;
use strict;
use warnings;
use RPerl;
our $VERSION = 0.001_000;

# [[[ OO INHERITANCE ]]]
use parent qw(RPerl::Test);
use RPerl::Test;

# [[[ CONSTANTS ]]]
## no critic qw(ProhibitConstantPragma ProhibitMagicNumbers)  # USER DEFAULT 3: allow constants
use constant PI  => my number $TYPED_PI  = 3.141_59;

# [[[ OO PROPERTIES ]]]
our %properties = ( ## no critic qw(ProhibitPackageVars)  # USER DEFAULT 2: allow OO properties
    empty_property => my integer $TYPED_empty_property = 2
);

use constant PIE => my string $TYPED_PIE = 'pecan';

# [[[ OO METHODS ]]]
our void__method $empty_method = sub { 2; };

1;                  # end of class
