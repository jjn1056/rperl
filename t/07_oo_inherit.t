#!/usr/bin/perl
print "\n\n[[[ OBJECT-ORIENTED TESTS DISABLED UNTIL C++ -> PERL NAMESPACE ISSUES ARE FIXED IN INLINE::CPP ]]]\n\n";

=disable
    lives_and(     # TIVALSOBU30
        sub {
            is( uninherited__Bubble('Wolverine'),
                'Bubble::uninherited__Bubble() RULES! ' . $OPS_TYPES,
                q{TIVALSOBU30 uninherited__Bubble('Wolverine') returns correct value}
            );
        },
        q{TIVALSOBU30 uninherited__Bubble('Wolverine') lives}
    );
=cut