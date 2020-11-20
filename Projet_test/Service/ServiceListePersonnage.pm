=description
|=================================================================|
                        ### Information ###
    Classe  : ServiceListePersonnage
    Fichier : ServiceListePersonnage.pm
    Auteur  : François-Xavier Marcheix
    Date    : 25/10/2020

|=================================================================|
                        ### Attribut ###
    fileName    : String 

|=================================================================|
=cut

package ServiceListePersonnage;

use strict;
use warnings;

sub new {
    my ($class) = @_;
    my $this = {};
    bless($this, $class);
    $this->{fileName} = './DataFile/ListePersonnageData.csv';
    return $this;
}

sub checkIfFileExist {
    my ($this) = @_;
    if( -e $this->{fileName} ) {
        return 1;
    }
    else{
        print( ">> warning : le fichier $this->{fileName} est introuvable création d'un fichier tmpListePersonnageData.csv dans le repertoire courant.");
        my $fileD;
        $this->{fileName} = './tmpListePersonnageData.csv';
        open( $fileD , '>' , $this->{fileName} );
        print( $fileD ListePersonnage->new()->toCSV() );
        close( $fileD );
        return 0 ;
    }
}

sub getListePersonnage {
    my ($this) = @_;
    if( $this->checkIfFileExist() )
    {
        my $listePersonnage = ListePersonnage->initByArray( ServiceCsv::dataCsvInArray($this->{fileName},1) );
        return $listePersonnage ;
    }
    return ListePersonnage->new() ;
}

sub addPersonnage {
    my ($this,$personnage) = @_;

    my $listePersonnage = $this->getListePersonnage();
    $listePersonnage->addPersonnage($personnage);
    ServiceCsv::writteCsvFile( $this->{fileName} , $listePersonnage->toCSV() );
    return $listePersonnage ;
}

sub findById {
    my ($this,$id) = @_;
    return $this->getListePersonnage()->findPersonnageById($id);
}

sub deleteById {
    my ($this,$id) = @_;
    my $listePersonnage = $this->getListePersonnage()->deletePersonnageById($id);
    ServiceCsv::writteCsvFile( $this->{fileName} , $listePersonnage->toCSV() );
    return $listePersonnage ;
}





1;
=endPage
|=================================================================|
      ^ ^
    (=0 0=)     github : PO630 
     '\_/'
|=================================================================|
=cut