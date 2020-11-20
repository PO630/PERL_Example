#!/usr/bin/perl
use strict;
use warnings;

print("Salut Larry\n");

my $x;
my $y = 10;
my $z = "hello";
print( $z , " " , $y , " \n" );


$x = $y + 3;
my $prenom = "Jules";
my $phrase = "Bonjour $prenom";
print("$phrase $x\n");


my $testChaine = "paul\n";
my $testChaineSansInt = 'paul\n';
print( length($testChaine) , " " , length($testChaineSansInt) , " \n" );


if( $x == $y ) {
   print "$x et $y sont égaux\n";
} 
elsif( $x < $y ){
    print "$x < $y  \n";
}
else {
   print "$x > $y  \n";
}


for( my $i=0; $i<=10; $i+=2 ) {
   print "for : $i\n";
}


my $i = 0;
while( $i <= 10 ) {
   print "while : $i\n";
   $i+=2;
}










