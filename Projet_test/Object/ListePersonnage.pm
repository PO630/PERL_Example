=description
|=================================================================|
                        ### Information ###
    Classe  : ListePersonnage
    Fichier : ListePersonnage.pm
    Auteur  : François-Xavier Marcheix
    Date    : 21/10/2020

|=================================================================|
                        ### Attribut ###
    personnages    : Personnage 

|=================================================================|
=cut

package ListePersonnage;

use strict;
use warnings;

sub new {
    my ($class) = @_;
    my $this = {};
    bless($this, $class);
    $this->{personnages} = [];
    return $this;
}

sub initByArray {
    my ($class,@arrayInit) = @_;
    my $this = {};
    bless($this, $class);
    $this->{personnages} = [];

    for (my $i=0; $i < @arrayInit; $i++) 
    {
        my @subarray = @{$arrayInit[$i]};
        $this->loadPersonnage( Personnage->initByArray(@subarray) );
    }    
    
    return $this;
}

#========================================================================#

sub getPersonnages {
    my ($this) = @_;
    return $this->{personnages} ;
}
sub setPersonnages {
    my ($this,$personnages) = @_;
    $this->{personnages} = $personnages ;
    return $this ;
}

sub addPersonnage {
    my ($this,$personnage) = @_;
    $personnage->setId( $this->maxIdPersonnages() + 1 );
    push @{$this->{personnages}}, $personnage;
    return 1;
}
sub loadPersonnage {
    my ($this,$personnage) = @_;
    push @{$this->{personnages}}, $personnage;
    return 1;
}

#========================================================================#


# Cette méthode retourne id le plus grand de la liste des personnages.
sub maxIdPersonnages {
    my($this) = @_;
    my $maxId = 0;
    foreach my $v ( @{$this->{personnages}} ) {
        if( $v->getId() > $maxId ){
            $maxId = $v->getId() ;
        }
    }
    return $maxId ;
}

sub findPersonnageById {
    my($this,$id) = @_;
    foreach my $v ( @{$this->{personnages}} ) {
        if( $v->getId() == $id ){
            return $v;
        }
    }
    return $this;
}

sub deletePersonnageById {
    my($this,$id) = @_;
    my @NewTab;
    for (my $index = 0 ; $index < @{$this->{personnages}} ; $index++ )
    {
        push( @NewTab, $this->{personnages}[$index] ) if ( $id != $this->{personnages}[$index]->getId() );
    }
    $this->{personnages} = [@NewTab] ;
    return $this;
}

#========================================================================#

sub toString {
   my ($this) = @_;
   my $s = "{personnages:[";
   for( my $index = 0 ; $index < @{$this->{personnages}} ; $index++ ){
       # format liste json
       if( $index+1 == @{$this->{personnages}} )
       {
           $s .= $this->{personnages}[$index]->toString();
       }
       else
       {
           $s .= $this->{personnages}[$index]->toString().",";
       }
   }
   return $s."]}";
}

sub toCSV {
    my ($this) = @_;
    my $s = Personnage::toCSVHeaderClass()."\n";
    foreach my $v ( @{$this->{personnages}} ) {
        $s .= $v->toCSV();
        $s .= "\n";
    }
    return $s;
}

1;
=endPage
|=================================================================|
      ^ ^
    (=0 0=)     github : PO630 
     '\_/'
|=================================================================|
=cut