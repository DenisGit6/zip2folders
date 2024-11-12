First, it checks that it received exactly 2 arguments.
it will also check that both argument 1 and 2 are directories.
if any of those conditions are false, print "error" and exit.

Second, inside the second directory (argument 2), create a directory
with the name of the current year.
Third, using "tar", archive and compress the first directory (argument 1) into
a file called "backup.tar.gz" inside the directory you created earlier.
