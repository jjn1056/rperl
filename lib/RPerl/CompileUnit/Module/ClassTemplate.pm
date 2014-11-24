# [[[ HEADER ]]]
# <<< CHANGE ME: replace with real class name >>>
package RPerl::CompileUnit::Module::ClassTemplate;
use strict;
use warnings;
use RPerl;
our $VERSION = 0.001_000;

# [[[ OO INHERITANCE ]]]
# <<< CHANGE ME: leave as base class for no inheritance, or replace with real parent package name >>>
use parent qw(RPerl::CompileUnit::Module::Class);
use RPerl::CompileUnit::Module::Class;

# [[[ CRITICS ]]]
# <<< CHANGE ME: delete unused critics >>>
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls)  # USER DEFAULT 1: allow numeric values and print operator
## no critic qw(ProhibitPackageVars)  # USER DEFAULT 2: allow OO properties
## no critic qw(ProhibitConstantPragma)  # USER DEFAULT 3: allow constants
## no critic qw(ProhibitExplicitStdin)  # USER DEFAULT 4: allow <STDIN>
## no critic qw(RequireTrailingCommas)  # USER DEFAULT 5: no trailing commas in RPerl lists  # NEED ANSWER: RPerl is mostly array refs, do we even need this?

## no critic qw(ProhibitUselessNoCritic PodSpelling) # DEVELOPER DEFAULT 1a: allow unreachable & POD-commented code, must be on line 1
## no critic qw(ProhibitUnreachableCode RequirePodSections RequirePodAtEnd) # DEVELOPER DEFAULT 1b: allow unreachable & POD-commented code, must be after line 1
## no critic qw(ProhibitStringySplit ProhibitInterpolationOfLiterals)  # DEVELOPER DEFAULT 2: allow string test values

## no critic qw(ProhibitStringyEval)  # SYSTEM DEFAULT 1: allow eval()
## no critic qw(RequireInterpolationOfMetachars)  # SYSTEM DEFAULT 2: allow single-quoted control characters, sigils, and regexes
## no critic qw(ProhibitCascadingIfElse)  # SYSTEM DEFAULT 3: allow argument-handling logic
## no critic qw(Capitalization ProhibitMultiplePackages)  # SYSTEM DEFAULT 4: allow multiple lower case package names
## no critic qw(RequireCheckingReturnValueOfEval)  # SYSTEM DEFAULT 5: allow eval() test code blocks

## no critic qw(ProhibitBooleanGrep)  # SYSTEM SPECIAL 1: allow grep
## no critic qw(ProhibitAutoloading RequireArgUnpacking)  # SYSTEM SPECIAL 2: allow Autoload & read-only @_
## no critic qw(ProhibitParensWithBuiltins ProhibitNoisyQuotes)  # SYSTEM SPECIAL 3: allow code generated by PPI
## no critic qw(ProhibitPackageVars)  # SYSTEM SPECIAL 4a: allow $rperltypes::supported
## no critic qw(ProhibitPackageVars)  # SYSTEM SPECIAL 4b: allow $OperatorVoid::_operator_void_names
## no critic qw(ProhibitExcessMainComplexity)  # SYSTEM SPECIAL 5: allow complex code outside subroutines, must be on line 1
## no critic qw(ProhibitExcessComplexity)  # SYSTEM SPECIAL 6: allow complex code inside subroutines, must be after line 1
## no critic qw(ProhibitPostfixControls)  # SYSTEM SPECIAL 7: PERL CRITIC UNFILED ISSUE, not postfix foreach
## no critic qw(ProhibitDeepNests)  # SYSTEM SPECIAL 8: allow deeply-nested code
## no critic qw(ProhibitNoStrict)  # SYSTEM SPECIAL 9: allow no strict
## no critic qw(RequireBriefOpen)  # SYSTEM SPECIAL 10: allow complex processing with open filehandle
## no critic qw(ProhibitBacktickOperators)  # SYSTEM SPECIAL 11: allow system command execution
## no critic qw(ProhibitCascadingIfElse)  # SYSTEM SPECIAL 12: allow complex conditional logic

## no critic (package)  # SYSTEM EXTERNAL 1: originally from Inline::CPP

# COMBO CRITICS
## no critic qw(ProhibitUselessNoCritic PodSpelling ProhibitExcessMainComplexity)  # DEVELOPER DEFAULT 1a: allow unreachable & POD-commented code; SYSTEM SPECIAL 5: allow complex code outside subroutines, must be on line 1

# [[[ INCLUDES ]]]
# <<< CHANGE ME: delete for no includes, or replace with real include package name(s) >>>
use RPerl::Test::Foo;
use RPerl::Test::Bar;

# [[[ CONSTANTS ]]]
# <<< CHANGE ME: delete for no constants, or replace with real constant name(s) & data >>>
use constant PI  => my number $TYPED_PI  = 3.14159;
use constant PIE => my string $TYPED_PIE = 'pecan';

# NEED UPGRADE: constant array & hash refs not yet read-only as of Perl v5.20
#use constant DAYS => my string__array_ref $TYPED_DAYS
#    = [ 'Sun', 'Mon', 'Tues', 'Weds', 'Thurs', 'Fri', 'Sat' ];
#use constant HYDROGEN => my scalar__array_ref $TYPED_HYDROGEN = [
#    my integer $TYPED_number = 1,
#    my number $TYPED_weight  = 1.00794,
#    my string $TYPED_symbol  = 'H'
#];
#use constant TRANSCENDENTALS => my number__hash_ref $TYPED_TRANSCENDENTALS
#    = { pi => 3.14159, e => 2.71828, c => 299_792_458 };
#use constant EINSTEIN => my scalar__hash_ref $TYPED_EINSTEIN = {
#    name       => my string $TYPED_name        = 'Albert Einstein',
#    birth_year => my integer $TYPED_birth_year = 1879,
#    death_year => my integer $TYPED_death_year = 1955
#};

# [[[ OO OBJECT PROPERTIES ]]]
# <<< CHANGE ME: replace with real object property name(s) & default data >>>
our %properties = ( ## no critic qw(ProhibitPackageVars)  # USER DEFAULT 2: allow OO properties
    plugh => my integer $TYPED_plugh           = 23,
    xyzzy => my string $TYPED_xyzzy            = 'twenty-three',
    thud  => my integer__array_ref $TYPED_thud = [ 2, 4, 6, 8 ],
    yyz => my number__hash_ref $TYPED_yyz = { a => 3.1, b => 6.2, c => 9.3 },
);

# [[[ OO CLASS PROPERTIES ]]]
# <<< CHANGE ME: replace with real class property name(s) & default data >>>
our %properties_class = ( ## no critic qw(ProhibitPackageVars)  # USER DEFAULT 2: allow OO properties
    name => my string $TYPED_name = 'howdy',
);

# [[[ OO METHODS ]]]

# <<< CHANGE ME: delete for no methods, or replace with real method(s) >>>
our void__method $quux = sub {
    ( my object $self) = @_;
    $self->{plugh} = $self->{plugh} * 2;
};

our string__method $corge = sub {
    ( my object $self) = @_;
    return $self->{xyzzy} x 3;
};

1;
1;    # CODE SEPARATOR: methods above, subroutines below

# [[[ SUBROUTINES ]]]

# <<< CHANGE ME: delete for no subroutines, or replace with real subroutine(s) >>>
our void $grault = sub {
    ( my integer $grault_input ) = @_;
    print '$grault_input ** 2 = ' . ( $grault_input**2 ) . "\n";
};

our number__array_ref $garply = sub {
    ( my integer $garply_input ) = @_;
    my number__array_ref $garply_output
        = [ $garply_input * 1.1, $garply_input * 2.2, $garply_input * 3.3 ];
    return $garply_output;
};

# NEED DETERMINE: auto-generate ops & types reporting below???
# NEED DETERMINE: auto-generate ops & types reporting below???
# NEED DETERMINE: auto-generate ops & types reporting below???

# <<< OPERATIONS & DATA TYPES REPORTING >>>
our integer $RPerl__CompileUnit__Module__ClassTemplate__OPS_TYPES_ID
    = sub { return 0; };    # PERLOPS_PERLTYPES is 0
our string $RPerl__CompileUnit__Module__ClassTemplate__ops
    = sub { return 'PERL'; };
our string $RPerl__CompileUnit__Module__ClassTemplate__types
    = sub { return 'PERL'; };

1;
1;                          # CODE SEPARATOR: end of class
