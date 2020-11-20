=description
|=================================================================|
                        ### Information ###
    Exe     : test2
    Fichier : test2.pl
    Auteur  : François-Xavier Marcheix
    Date    : 25/10/2020

|=================================================================|

    Fichier de test des services.

|=================================================================|
=cut

#!/usr/bin/perl
use strict;
use warnings;

# Ici j'indique l'utilisation des packages présent dans le 
# repertoire courant.
use lib '.';
use lib './Object';
use lib './Service';
use Personnage;
use ListePersonnage;
use ServiceCsv;
use ServiceListePersonnage;

my $listePersonnage = ServiceListePersonnage->new()->getListePersonnage();
print $listePersonnage->toString()."\n";

=sub1
ServiceListePersonnage->new()->addPersonnage( Personnage->new(0,"veigar") );
$listePersonnage = ServiceListePersonnage->new()->getListePersonnage();
print $listePersonnage->toString()."\n";
=cut

=sub2
print ServiceListePersonnage->new()->findById( 2 )->toString."\n" ;
print ServiceListePersonnage->new()->deleteById( 2 )->toString."\n" ;
=cut 

=endPage
|=================================================================|
      ^ ^
    (=0 0=)     github : PO630 
     '\_/'
|=================================================================|
=cut