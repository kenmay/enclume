#
# ----------------------
# Français 5-BI 2017
# ----------------------
# GTE téléchargement -- message generator
#
# File: tele-GTE_message.pl
# Description: to be added...
# Author: Ken Mayers
# Email: kenmay@bergen.org
# Web: http://users.bergen.org/~kenmay
# Version: 1.0, created 3-13-2017
#
# COPYRIGHT NOTICE:
#
# Copyright 2017 Concrete Productions Inc. All Rights Reserved.
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


$MSGTXT = "0916_PP09_rapport.tex";


$COUNTDOWN = 0;

$COUNTUP = $BIGUP = 0;


# $BIGMATCH = 0;

# @DUPS = ();


print "enter the path to a question database \n";

$SOURCE = "PP_09_data.txt";

open (DB, $SOURCE) || die "cannot open file: $!";

while (<DB>) {

$LINE = $_ ;

chomp $LINE;

$DB_DELIM = ';';

push @LOL1, [split (/\Q$DB_DELIM\E/o, $LINE)];

$COUNTDOWN++;
}


print "countdown after response matrix is $COUNTDOWN \n";


open MSGTXT, ">>$MSGTXT" or die "cannot append to $NEWPAGE: $!";

print MSGTXT "Bonjour !\n";
print  MSGTXT "\n";

print MSGTXT "This message contains detailed instructions for submitting your GTE.\n";
print MSGTXT "\n";
print MSGTXT "1. First, make sure you have prepared a PDF with your title page, la tâche écrite, préambule, et bibliographie (you can do this by downloading a Google doc as a pdf or saving an MS Word document as a PDF). Please SHARE this PDF with me :)\n";
print MSGTXT "\n";
print MSGTXT "2. Next, you should visit the Moodle page located at http:\/\/bit.ly\/GTE-tele\n";
print MSGTXT "\n";
print MSGTXT "3. The Moodle page will send you to :\n";
print MSGTXT "\n";
print MSGTXT "https:\/\/candidates.ibo.org\n";
print MSGTXT "\n";
print MSGTXT "4. You will need these credentials to log in yourself:\n";
print MSGTXT "\n";



#
# ----------------------
# Here we get the info generate a message, and then output the complete set of messages
# ----------------------
#


$BIGDOWN = $COUNTDOWN;


while ($BIGUP != $BIGDOWN) {

$GTIMESTAMP = $LOL1[$BIGUP][0]; # here we get the student's Timestamp from the matrix
$LAST = $LOL1[$BIGUP][1]; # here we get the student's NOM from the matrix
$FIRST = $LOL1[$BIGUP][2]; # here we get the student's PRÉNOM from the matrix
$SECTION = $LOL1[$BIGUP][3]; # here we get the student's SECTION from the matrix




print MSGTXT "personal code: $CODE\n";
print MSGTXT "\n";
print MSGTXT "PIN: $BIPIN\n";
print MSGTXT "\n";
print MSGTXT "5. When you see the IB Diploma Programme candidates page, choose the My Coursework tab.\n";
print MSGTXT "\n";
print MSGTXT "6. When you see the IB eCoursework page, scroll down to FRENCH B SL
WRITTEN ASSIGNMENT\n";
print MSGTXT "\n";
print MSGTXT "6. You can click on one of the upload buttons to upload your PDF (the left button opens up a window to select a file on your computer; the right button opens up a window to select a file on your Google drive.\n";
print MSGTXT "NEXT STEP: once your file has been completely uploaded, you will be able to digitally sign the candidate declaration. Once you have done that, you're done, and I can then digitally sign off as well and the submission is complete.\n";
print MSGTXT "\n";
print MSGTXT "CHALLENGES: sometimes the site does not seem to work very well. Please note that logging out and then logging back in often helps, especially in between uploading the digitally signing. In addition you may need to enable popup windows on your browser.\n";
print MSGTXT "\n";
print MSGTXT "PLEASE keep me posted! I can help if you have problems (with checking the French or uploading and signing). I will also be ready to sign off on your submission as soos as it is ready!!!\n";
print MSGTXT "\n";
print MSGTXT "Bon travail !\n";
print MSGTXT "\n";
print MSGTXT "M. M\n";
print MSGTXT "\n";
print MSGTXT "\n";
print MSGTXT "INSTRUCTIONS -- uploading the GTE\n";
print MSGTXT "\n";
print MSGTXT "\n";
print MSGTXT $FIRST $LAST "\<"$EMAIL"\>";
print MSGTXT "\n";
print MSGTXT "\n";
print MSGTXT "~*~*~*~*~*~*~*~*~*~*~*\n";
print MSGTXT "\n";
print MSGTXT "\n";



$BIGUP++;


} # end of outermost while
print MSGTXT "\n";
print MSGTXT "\n";
print MSGTXT "FIN-FIN-FIN";
print MSGTXT "\n";

close MSGTXT;

# end
