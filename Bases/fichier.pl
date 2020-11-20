#!/usr/bin/perl
use strict;
use warnings;


foreach my $name ( glob('*') ) {
   print "$name\n";
}

#    <      lecture
#    >      écriture (écrasement)
#   >>      écriture (ajout)
#   +>      lecture et écriture (écrasement)
#   +<      lecture et écriture (ajout)

my $fd;
my $fd_name = "data.txt";

if( -e $fd_name ) {
   print "Le fichier existe =) \n";
}
else{
    print "Le fichier existe pas =( \n"
}

if( ! open($fd,'>>',$fd_name) ) {
   exit(1);
}

# Lecture
open($fd,'<',$fd_name);
my $l;
while( defined( $l = <$fd> ) ) {
   chomp $l;
   print "$. : $l\n";
}
close( $fd );

# Ecriture
open( $fd , '>' , $fd_name );
print( $fd "ligne 1 du text \n");
printf( $fd "%d \n", 12 );
print( $fd "ligne 3 du text encore \n");
close($fd);



