#!/usr/bin/perl
use strict;
use warnings;

use lib '.';
use Personnage;
use Personnage2;
use Casting;

my $hero = Personnage->new("Wick","John",37);

my $perso2 = Personnage2->new("Smith","John",42,"agent");

$hero->toString();



my $castingListe = Casting->new();

$castingListe->ajoute($hero);
$castingListe->ajoute($perso2);

print $castingListe->toString()."\n";



