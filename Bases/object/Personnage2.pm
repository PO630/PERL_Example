package Personnage2;

use strict;
use warnings;

use Personnage;
our @ISA = qw(Personnage);

sub new {

   my ($class,$name,$surname,$age,$profession) = @_;

   my $this = $class->SUPER::new( $name,$surname,$age );

   $this->{PROFESSION} = $profession;

   return bless($this,$class);

}

sub toString {
   my ($this) = @_;
   my $s = "[2:$this->{PROFESSION}";
   $s .= $this->SUPER::toString();
   $s .= "]";
   return $s ;
}



1;