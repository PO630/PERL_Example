=description
|=================================================================|
                        ### Information ###
    Exe     : test
    Fichier : test.pl
    Auteur  : François-Xavier Marcheix
    Date    : 21/10/2020

|=================================================================|

    Fichier de test des classes Personnage et ListePersonnage.

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

# Je crée 2 nouveaux objets Personnage avec le constructeur new.
my $perso1 = Personnage->new(0,"garen");
my $perso2 = Personnage->new(0,"darius");
# Je test l'affichage par la méthode toString de la classe Personnage.
print $perso1->toString()."\n"."\n";


# Je crée un objet ListePersonnage avec son constructeur.
my $listePersonnage1 = ListePersonnage->new();
$listePersonnage1->addPersonnage($perso1);
$listePersonnage1->addPersonnage($perso2);

print $listePersonnage1->toString()."\n";
print "maxId = ".$listePersonnage1->maxIdPersonnages()."\n" ;
print $listePersonnage1->toCSV()."\n";

ServiceCsv::writteCsvFile("DataFile/ListePersonnageData.csv",$listePersonnage1->toCSV());
print "\n";

my $return = ServiceCsv::readCsvFile("DataFile/ListePersonnageData.csv");
print "$return\n";
print"\n============================\n";


my @dataArray = ServiceCsv::dataCsvInArray("DataFile/ListePersonnageData.csv",1);

my $listeReturn = ListePersonnage->initByArray(@dataArray);
print $listeReturn->toString()."\n";


=endPage
|=================================================================|
      ^ ^
    (=0 0=)     github : PO630 
     '\_/'
|=================================================================|
=cut