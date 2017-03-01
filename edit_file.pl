#Specify the file
$file = "test.txt";

#Open the file and read data
#Die with grace if it fails
open (FILE, "<$file") or die "Can't open $file: $!\n";
@lines = <FILE>;
close FILE;

print "Rewriting file";

#Open same file for writing, reusing STDOUT
open (STDOUT, ">$file") or die "Can't open $file: $!\n";

#Walk through lines, putting into $_, and substitute 2nd away
for ( @lines ) {
    s/(.*?away.*?)away/$1yellow/;
    print;
}

#Finish up
close STDOUT;