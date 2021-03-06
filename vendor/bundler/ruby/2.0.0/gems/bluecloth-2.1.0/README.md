# bluecloth 2

* http://deveiate.org/projects/BlueCloth

## Description

BlueCloth is a Ruby implementation of John Gruber's [Markdown][markdown], a
text-to-HTML conversion tool for web writers. To quote from the project page:
Markdown allows you to write using an easy-to-read, easy-to-write plain text
format, then convert it to structurally valid XHTML (or HTML).

It borrows a naming convention and several helpings of interface from
[Redcloth][redcloth], Why the Lucky Stiff's processor for a similar
text-to-HTML conversion syntax called [Textile][textile].

BlueCloth 2 is a complete rewrite using David Parsons' [Discount][discount]
library, a C implementation of Markdown. I rewrote it using the extension for
speed and accuracy; the original BlueCloth was a straight port from the Perl
version that I wrote in a few days for my own use just to avoid having to
shell out to Markdown.pl, and it was quite buggy and slow. I apologize to all
the good people that sent me patches for it that were never released.

Note that the new gem is called 'bluecloth' and the old one 'BlueCloth'. If
you have both installed, you can ensure you're loading the new one with the
'gem' directive:

	# Load the 2.0 version
	gem 'bluecloth', '>= 2.0.0'
	
	# Load the 1.0 version
	gem 'BlueCloth'
	require 'bluecloth'


## Installation

	gem install bluecloth


## Contributing

You can check out the current development source [with Mercurial][hgrepo], or if you prefer Git, via [its Github mirror][gitmirror].

After checking out the source, run:

	$ rake newb

This task will install any missing dependencies, run the tests/specs, and
generate the API documentation.


## Contributors

* Martin Chase <stillflame@FaerieMUD.org>
* Florian Gross <flgr@ccan.de>

This product includes software developed by David Loren 
Parsons <http://www.pell.portland.or.us/~orc>.


## License

Discount's license may be found in the [README.discount][discountreadme] file
included with the distribution.

All other code:

Copyright (c) 2004-2011, Michael Granger
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice,
  this list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

* Neither the name of the author/s, nor the names of the project's
  contributors may be used to endorse or promote products derived from this
  software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


[markdown]:http://daringfireball.net/projects/markdown/
[redcloth]:http://redcloth.org/
[textile]:http://www.textism.com/tools/textile/
[discount]:http://www.pell.portland.or.us/~orc/Code/discount/
[hgrepo]:http://repo.deveiate.org/BlueCloth
[gitmirror]:https://github.com/ged/bluecloth
[discountreadme]:http://deveiate.org/projects/BlueCloth/browser/LICENSE.discount
