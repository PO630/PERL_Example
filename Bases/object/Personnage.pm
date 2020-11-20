package Personnage;

use strict;
use warnings;

sub new {

    my ($class,$name,$surname,$age) = @_;
    my $this = {};

    bless($this, $class);

    $this->{NAME} = $name;
    $this->{SURNAME} = $surname;
    $this->{AGE} = $age;

    return $this;
}

sub toString {
   my ($this) = @_;
   return "{Personnage:$this->{SURNAME},$this->{NAME},$this->{AGE}}";
}

1;