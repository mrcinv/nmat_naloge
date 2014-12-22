= Izpiti iz Numerične matematike =

V ta direktorij sodijo izpiti za predmet ''Numerična matematika'' na UNI.

== Priprava izpita ==

Če želimo pripraviti izpit ustvarimo datoteko po imenu ''nmatLL[a-c].tex'' in poženemo ukaz
{{{
    rake nmat.pdf
}}}
LL je koledarsko leto, a-d pa označuje kateri izpit po vrsti je to.

== Pdf z vsemi izpiti ==

PDF z vsemi izpiti pripravimo z ukazom 
{{{
    rake nmat_vsi.pdf
}}}

== Če slučajno nimamo programa rake ==

Če ukaz ''rake'' ne deluje, imamo več možnosti: 

 * namestimo paket ''rake''
   * Debian, Ubuntu: apt-get install rake
   * fedora, redhat: yum install rake

 * Če je nameščen le ''ruby'' lahko isto dosežemo z
{{{
    erb nmat.erb > nmat.tex
    pdflatex nmat.tex
}}}
