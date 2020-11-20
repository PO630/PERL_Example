=description
|=================================================================|
                        ### Information ###
    Classe  : Personnage
    Fichier : Personnage.pm
    Auteur  : François-Xavier Marcheix
    Date    : 21/10/2020

|=================================================================|
                        ### Attribut ###
    id      : int
    name    : string

|=================================================================|
=cut

package Personnage;

use strict;
use warnings;

sub new {
    my ($class,$id,$name) = @_;
    my $this = {};
    bless($this, $class);
    $this->{id} = $id;
    $this->{name} = $name;
    return $this;
}

sub initByArray {
    my ($class,@field) = @_;
    my $this = {};
    bless( $this , $class );
    $this->{id} = $field[0];
    $this->{name} = $field[1];
    return $this;
}

#=====================================================================#

sub getId {
    my ($this) = @_;
    return $this->{id} ;
}

sub getName {
    my ($this) = @_;
    return $this->{name} ;
}

sub setId {
    my ($this,$id) = @_;
    $this->{id} = $id ;
    return $this ;
}

sub setName {
    my ($this,$name) = @_;
    $this->{name} = $name ;
    return $this ;
}

#=====================================================================#

sub toString {
   my ($this) = @_;
   return "{\"id\":$this->{id},\"name\":\"$this->{name}\"}";
}

sub toCSV {
    my ($this) = @_;
    return "$this->{id};$this->{name}";
}
sub toCSVHeaderClass {
    my ($this) = @_;
    return "id;name";
}

1;
=endPage
|=================================================================|
      ^ ^
    (=0 0=)     github : PO630 
     '\_/'
|=================================================================|
=cut