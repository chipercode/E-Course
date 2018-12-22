#!/usr/bin/perl 
use strict; 
my $source_file = ""; 
my $titlee = ""; 
my $time = ""; 
my $course="";
my $source_file = $ARGV[0]; 
open (SOURCE_FILE_IN, "< $source_file") or die "Can't open file: \"$source_file\"\n"; 
while (<SOURCE_FILE_IN>){ 
chomp; 
	if(m/<title>(.*)<\/title>/){ 
		$course = $1;
		print "$1\n";
		}
	if(m/{.*?(title.*?)result.*?(TimeStr.*?)activity/){ 
		$titlee = $1; 
		$time = $2; 
		print "$titlee\t"; 
		print "$time\n"; 
		} 
}
close(SOURCE_FILE_IN);
