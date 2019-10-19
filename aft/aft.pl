#!/usr/bin/perl

###############################################################################
#
# THIS INFORMATION IS PROPRIETARY TO
#     Cypress Semiconductor
#  All rights reserved
#
#
#  A very simple implementation of tail
###############################################################################

my $num_lines = shift || die "Usage: $0 number_of_lines path_to_file\n";
my $file      = shift;

open(FL,"<",$file) || die "Could not open $file\n";

@lines=<FL>;
close(FL);

if ($num_lines > $#lines)
{
	$num_lines = $#lines;
}

print @lines[$#lines-$num_lines .. $#lines];