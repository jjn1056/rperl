package RPerl::HelperFunctions_cpp;
use strict;
use warnings;
use version; our $VERSION = qv('0.1.1');
use Carp;

our $CPP_loaded = 0;
our $CPP_linked = 0;
#our @ISA = ('RPerl::Class');  # DEV NOTE: need to use HelperFunctions in RPerl::DataStructure::Array for type checking SvIOKp() etc; remove dependency on RPerl void__method type so HelperFunctions can be loaded by RPerl type system
#use RPerl::Class;  use RPerl;  # DEV NOTE: remove dependency on RPerl

#our void__method $cpp_load = sub {  # DEV NOTE: remove dependency on RPerl
sub cpp_load {
;	
#    croak("in HelperFunctions_cpp::cpp_load(), croaking");
	if (defined($RPerl::HelperFunctions_cpp::CPP_loaded)) { print "in HelperFunctions_cpp::cpp_load(), have \$RPerl::HelperFunctions_cpp::CPP_loaded = '" . $RPerl::HelperFunctions_cpp::CPP_loaded . "'\n"; }
		else { print "in HelperFunctions_cpp::cpp_load(), have \$RPerl::HelperFunctions_cpp::CPP_loaded = 'UNDEF'\n"; }
	if (not(defined($RPerl::HelperFunctions_cpp::CPP_loaded)) or not($RPerl::HelperFunctions_cpp::CPP_loaded))
	{
		my $eval_string = <<"EOF";
package main;
BEGIN { print "[[[ BEGIN 'use Inline' STAGE for 'RPerl/HelperFunctions.cpp' ]]]\n"x3; }
use Inline
(
	CPP => '$RPerl::INCLUDE_PATH/RPerl/HelperFunctions.cpp',
	TYPEMAPS => '$RPerl::INCLUDE_PATH/typemap.rperl',
	CCFLAGS => '-Wno-deprecated -std=c++0x',
	INC => '-I$RPerl::INCLUDE_PATH',
	BUILD_NOISY => 1,
	CLEAN_AFTER_BUILD => 0,
	WARNINGS => 1,
	FILTERS => 'Preprocess',
	AUTO_INCLUDE => # DEV NOTE: include non-RPerl files using AUTO_INCLUDE so they are not parsed by the 'Preprocess' filter
	[
		'#include <iostream>',
		'#include <string>',
		'#include <sstream>',
		'#include <limits>',
		'#include <vector>',
		'#include <unordered_map>',  # DEV NOTE: unordered_map may require '-std=c++0x' in CCFLAGS above
	],
);
print "[[[ END 'use Inline' STAGE for 'RPerl/HelperFunctions.cpp' ]]]\n"x3;
1;
EOF
		print "in HelperFunctions_cpp::cpp_load(), CPP not yet loaded, about to call eval() on \$eval_string =\n<<< BEGIN EVAL STRING>>>\n" . $eval_string . "<<< END EVAL STRING >>>\n";

		eval($eval_string);  ## no critic
		croak($@) if ($@);
		
		$RPerl::HelperFunctions_cpp::CPP_loaded = 1;
	}
	else { print "in HelperFunctions_cpp::cpp_load(), CPP already loaded, DOING NOTHING\n"; }
#};
}

#our void__method $cpp_link = sub {  # DEV NOTE: remove dependency on RPerl
sub cpp_link {
;
#	if (defined($RPerl::HelperFunctions_cpp::CPP_linked)) { print "in HelperFunctions_cpp::cpp_link(), have \$RPerl::HelperFunctions_cpp::CPP_linked = '" . $RPerl::HelperFunctions_cpp::CPP_linked . "'\n"; }
#		else { print "in HelperFunctions_cpp::cpp_link(), have \$RPerl::HelperFunctions_cpp::CPP_linked = 'UNDEF'\n"; }
	if (not(defined($RPerl::HelperFunctions_cpp::CPP_linked)) or not($RPerl::HelperFunctions_cpp::CPP_linked))
	{
		my $eval_string = <<'EOF';
package RPerl::HelperFunctions_cpp;
$CPP_linked = 1;
1;
package RPerl::HelperFunctions;
our @ISA = ('RPerl');  # HelperFunctions is not a class, so @ISA does not contain 'main::CPP__HelperFunctions' or 'RPerl::Class';  HelperFunctions_cpp is a class because it needs typed methods
1;
EOF
#		print "in HelperFunctions_cpp::cpp_link(), CPP not yet linked, about to call eval() on \$eval_string =\n<<< BEGIN EVAL STRING>>>\n" . $eval_string . "<<< END EVAL STRING >>>\n";

		eval($eval_string);  ## no critic
		croak($@) if ($@);
	}
#	else { print "in HelperFunctions_cpp::cpp_link(), CPP already linked, DOING NOTHING\n"; }
#};
}

package RPerl::HelperFunctions_cpp;
1;