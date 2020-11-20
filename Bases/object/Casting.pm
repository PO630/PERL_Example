package Casting;

use strict;
use warnings;

sub new {
   my ($class) = @_;
   my $this = {};
   bless($this, $class);
   $this->{PERSONNAGES} = [];
   return $this;
}

sub ajoute {
    my ($this,$personnage) = @_;
    push @{$this->{PERSONNAGES}}, $personnage;
    return 1;
}

sub toString {
   my ($this) = @_;
   my $s = "{Casting: ";
   foreach my $v ( @{$this->{PERSONNAGES}} ) {
      $s .= $v->toString();
   }
   return $s."}";
}


1;