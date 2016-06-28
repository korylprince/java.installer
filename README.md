java.installer

https://github.com/korylprince/java.installer

A simple tool for building java packages to deploy with [munki](http://munki.github.io/munki/).

The default Java package distributed by Oracle doesn't correctly identify the version meaning munki won't be able to update it. This utility creates a dummy package around the Oracle package to set the version.

#Usage#

First install [pkggen](https://github.com/korylprince/pkggen) into your `$PATH`:

	sudo curl https://raw.githubusercontent.com/korylprince/pkggen/master/pkggen -o /usr/local/bin/pkggen
	sudo chmod +x /usr/local/bin/pkggen

Next download the latest Java and extract the pkg from the dmg. Now clone this repo and do magic:

	git clone https://github.com/korylprince/java.installer.git
	cd java.installer
	sudo ./mkpkg.sh <version> /path/to/java.pkg /path/to/output.pkg

Now you have a pkg with the given version at `/path/to/output.pkg`. Success!

If you have any issues or questions, email the email address below, or open an issue at:
https://github.com/korylprince/java.installer/issues

#Copyright Information#

Copyright 2014 Kory Prince (korylprince AT gmail DAWT com).

License is BSD.
