## Test av Perl

#open file
open Inputfile, "<namefile.txt";

print "Names read from file:\n-------------------\n";

# read file and print
while (<Inputfile>) {
     print $_;
}

#close file
close Inputfile; 

print "\n";

#reopen file
open Inputfile, "<namefile.txt";

print "Names read from file via array:\n-------------------\n";

# read file 
@names_in_file = <Inputfile>;
#close file
close Inputfile; 

for $name (@names_in_file) {
     print $name;
}


