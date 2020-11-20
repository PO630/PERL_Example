=description
|=================================================================|
                        ### Information ###
    Fonction: ServiceCsv
    Fichier : ServiceCsv.pm
    Auteur  : François-Xavier Marcheix
    Date    : 21/10/2020

|=================================================================|
=cut

package ServiceCsv;

use strict;
use warnings;


sub writteCsvFile {

    my($fileName,$fileString) = @_;
    my $fileD;
    open(   $fileD , '>' , $fileName );
    print(  $fileD $fileString);
    close(  $fileD  );
    return 0;
}

sub readCsvFile {

    my($fileName) = @_;
    my $fileD;
    my $fileString = "";
    open( $fileD , '<', $fileName ) or die "Impossible d'ouvrir $fileName\n";
    while (my $line = <$fileD>) {
        chomp $line;
        $fileString = $fileString."\n".$line;
    }
    return $fileString;
}

sub dataCsvInArray {
    # On donne le nom fichier de fichier ainsi que le nombre de ligne Header du fichier. 
    my($fileName,$headerDown) = @_;
    my $fileD;
    my @dataArray = ();
    open( $fileD , '<', $fileName ) or die "Impossible d'ouvrir $fileName\n";
    while (my $line = <$fileD>) {
        chomp $line;
        if( $headerDown > 0 ){
            # Les lignes Header ne seront pas prise dans notre liste
            $headerDown = $headerDown - 1;
        }
        else{
            my @fields = split (';' , $line) ;
            push @dataArray, [@fields];
        }
    }
    return @dataArray;
}



1;
=endPage
|=================================================================|
      ^ ^
    (=0 0=)     github : PO630 
     '\_/'
|=================================================================|
=cut