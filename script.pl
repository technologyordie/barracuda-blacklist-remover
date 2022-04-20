#!/usr/bin/perl
use strict;
use warnings;

my $file = 'ip.txt';#text file to read in an ip address per line

#Edit these values as needed
my $email = 'user@domain.com';
my $phone = '5555551234';
my $comments = 'Reason+to+delist+this+ip+address';

open my $info, $file or die "Could not open $file: $!";

while( my $line = <$info>)  {

    chomp $line;
    my $out = `curl -s -d \"address=$line&email=$email&phone=$phone&comments=$comments&submit=Submit+Request\" -X POST https://barracudacentral.org/rbl/removal-request`;

    if ($out =~ /(Your confirmation number is BBR[0-9\-]*)/) {
       print "$line : $1\n";
    } else {
       print "$line : Error or already removed\n";
    }

}

close $info;
