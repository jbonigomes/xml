#XML TMA Documetation for Birkbeck University of London 2014/2015

##Includes:

	- Font Awesome Icons
	- jQuery

##Download and install wk first:

http://wkhtmltopdf.org/

##To compile the PDF:

	$ wkhtmltopdf -L 0 -T 0 -B 0 -R 0 -l index.html jgomes01_xmfma.pdf

##The shorter command:

You may wish to create an alias for fast compilation:

  alias wk="wkhtmltopdf -L 0 -T 0 -B 0 -R 0 -l index.html"

When run, it will look for a file named index.html and compile it with no
margins to whatever filename you pass as the second argument, a sample run would
look like:

	$ wk whatever.pdf
	
On UNIX systems, aliases are generally stored at ~/.zshrc or ~/.bashrc depending
on what type of shell you use. You may also wish to simply run the alias command
directly on your shell if you do not wish to keep permanent changes to your
system.
