#
# ----------------------
# Français 5-BI 2017
# ----------------------
# Petit Prince exercices de compréhension — report generator
#
# File: PP_10_rapport.pl
# Description: to be added...
# Author: Ken Mayers
# Email: kenmay@bergen.org
# Web: http://users.bergen.org/~kenmay
# Version: 1.0, created 9-15-2016; updated 160915
#
# COPYRIGHT NOTICE:
#
# Copyright 2016 Concrete Productions Inc. All Rights Reserved.
#
# This program may be distributed as shareware. It may be used and
# modified free of charge for personal, academic, government or non-profit
# use, so long as this copyright notice and the header above remain intact.
# Any commercial use should be registered. Please also send me an email,
# and let me know where you are using this script. By using this program
# you agree to indemnify Concrete Productions Inc. from any liability.
#
# Selling the code for this program without prior written consent is
# expressly forbidden. Obtain permission before redistributing this
# program over the Internet or in any other medium. In all cases
# copyright and header must remain intact.
#
# Please check the README file for full details on registration.
# =====================================================================

#!/usr/bin/perl -w

use 5.004;
# use strict; # enforce declarations and quoting
# use CGI qw(:standard); # import shortcuts for html
use Fcntl qw(:flock); # imports LOCK_EX, LOCK_SH, LOCK_NB

# sub bail { # function to handle errors gracefully
# my $error = "@_";
# print h1 ("Unexpected Error"), p($error), end_html;
# die $error;

# }


$NARTXT = "0916_PP10_rapport.tex";


$COUNTDOWN = 0;

$COUNTUP = $BIGUP = 0;


# $BIGMATCH = 0;

# @DUPS = ();


print "enter the path to a question database \n";

$SOURCE = "PP_10_data.txt";

open (DB, $SOURCE) || die "cannot open file: $!";

while (<DB>) {

$LINE = $_ ;

chomp $LINE;

$DB_DELIM = ';';

push @LOL1, [split (/\Q$DB_DELIM\E/o, $LINE)];

$COUNTDOWN++;
}


print "countdown after response matrix is $COUNTDOWN \n";


open NARTXT, ">>$NARTXT" or die "cannot append to $NEWPAGE: $!";

print NARTXT "% Le Petit Prince -- réponses à l'exercice de compréhension\n";
print NARTXT "% Chapitre 10\n";
print NARTXT "% v 1.0 ksm 13-09-2016\n";

print NARTXT "\\font\\bigrm = cmr10 scaled \\magstep 1\n";
print NARTXT "\\font\\bigit = cmmi12 at 12pt\n";
print NARTXT "\\font\\hugerm = cmr10 scaled \\magstep 2\n";
print NARTXT "\\font\\hugeit = cmmi10 scaled \\magstep 2\n";

print NARTXT "\\documentclass{article}\n";
print NARTXT "\\usepackage[utf8]{inputenc}\n";
print NARTXT "\\usepackage[T1]{fontenc}\n";
print NARTXT "\\usepackage[cm]{fullpage}\n";

print NARTXT "\\begin{document}\n";
print NARTXT "\\setlength{\\parindent}{0pt}\n";

print NARTXT "\n";


print NARTXT "\n";





#
# ----------------------
# Here we get the grades generate a report, and print the tex file
# ----------------------
#


$BIGDOWN = $COUNTDOWN;


while ($BIGUP != $BIGDOWN) {

$GTIMESTAMP = $LOL1[$BIGUP][0]; # here we get the student's Timestamp from the matrix
$LAST = $LOL1[$BIGUP][1]; # here we get the student's NOM from the matrix
$FIRST = $LOL1[$BIGUP][2]; # here we get the student's PRÉNOM from the matrix
$SECTION = $LOL1[$BIGUP][3]; # here we get the student's SECTION from the matrix

$REPONSE01 = $LOL1[$BIGUP][4]; # here we get the student's RESPONSE from the matrix
$REPONSE02 = $LOL1[$BIGUP][5]; # here we get the student's RESPONSE from the matrix
$REPONSE03 = $LOL1[$BIGUP][6]; # here we get the student's RESPONSE from the matrix
$REPONSE04 = $LOL1[$BIGUP][7]; # here we get the student's RESPONSE from the matrix
$REPONSE05 = $LOL1[$BIGUP][8]; # here we get the student's RESPONSE from the matrix
$REPONSE06 = $LOL1[$BIGUP][9]; # here we get the student's RESPONSE from the matrix
$REPONSE07 = $LOL1[$BIGUP][10]; # here we get the student's RESPONSE from the matrix
$REPONSE08 = $LOL1[$BIGUP][11]; # here we get the student's RESPONSE from the matrix
$REPONSE09 = $LOL1[$BIGUP][12]; # here we get the student's RESPONSE from the matrix
$REPONSE10 = $LOL1[$BIGUP][13]; # here we get the student's RESPONSE from the matrix

if ($BIGUP == 0) {
$QUESTION01 = $REPONSE01;
$QUESTION02 = $REPONSE02;
$QUESTION03 = $REPONSE03;
$QUESTION04 = $REPONSE04;
$QUESTION05 = $REPONSE05;
$QUESTION06 = $REPONSE06;
$QUESTION07 = $REPONSE07;
$QUESTION08 = $REPONSE08;
$QUESTION09 = $REPONSE09;
$QUESTION10 = $REPONSE10;
}

if ($BIGUP > 0) {
print NARTXT "\\centerline{\\hugerm $FIRST $LAST --- section $SECTION}\n";
print NARTXT "\\vspace{0.5pc}\n";
   
print NARTXT "\\centerline{\\bf Le Petit Prince (chapitre 9) --- exercices de compréhension}\n";
print NARTXT "\\vspace{2pc}\n";

print NARTXT "{\\it $QUESTION01}\n";
print NARTXT "\\vspace{1pc}\n\n";
print NARTXT "{$REPONSE01}\n";
print NARTXT "\\vspace{1pc}\n\n";
 
print NARTXT "{\\it $QUESTION02}\n";
print NARTXT "\\vspace{1pc}\n\n";
print NARTXT "{$REPONSE02}\n";
print NARTXT "\\vspace{1pc}\n\n";
 
print NARTXT "{\\it $QUESTION03}\n";
print NARTXT "\\vspace{1pc}\n\n";
print NARTXT "{$REPONSE03}\n";
print NARTXT "\\vspace{1pc}\n\n";
 
print NARTXT "{\\it $QUESTION04}\n";
print NARTXT "\\vspace{1pc}\n\n";
print NARTXT "{$REPONSE04}\n";
print NARTXT "\\vspace{1pc}\n\n";
 
print NARTXT "{\\it $QUESTION05}\n";
print NARTXT "\\vspace{1pc}\n\n";
print NARTXT "{$REPONSE05}\n";
print NARTXT "\\vspace{1pc}\n\n";
 
print NARTXT "{\\it $QUESTION06}\n";
print NARTXT "\\vspace{1pc}\n\n";
print NARTXT "{$REPONSE06}\n";
print NARTXT "\\vspace{1pc}\n\n";
 
print NARTXT "{\\it $QUESTION07}\n";
print NARTXT "\\vspace{1pc}\n\n";
print NARTXT "{$REPONSE07}\n";
print NARTXT "\\vspace{1pc}\n\n";
 
print NARTXT "{\\it $QUESTION08}\n";
print NARTXT "\\vspace{1pc}\n\n";
print NARTXT "{$REPONSE08}\n";
print NARTXT "\\vspace{1pc}\n\n";
 
print NARTXT "{\\it $QUESTION09}\n";
print NARTXT "\\vspace{1pc}\n\n";
print NARTXT "{$REPONSE09}\n";
print NARTXT "\\vspace{1pc}\n\n";
 
print NARTXT "{\\it $QUESTION10}\n";
print NARTXT "\\vspace{1pc}\n\n";
print NARTXT "{$REPONSE10}\n";
print NARTXT "\\vspace{1pc}\n\n";



print NARTXT "\\vfill\\eject\n";

}

$BIGUP++;


} # end of outermost while

print NARTXT "\\end{document}\n";

close NARTXT;

# end
