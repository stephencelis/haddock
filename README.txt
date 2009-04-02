= haddock

http://github.com/stephencelis/haddock


== DESCRIPTION

A more memorable password generator. Swordfish? No, I got tired of that. I
changed it.


== FEATURES/PROBLEMS

* Secure!


== SYNOPSIS

In your apps:

  require "rubygems"
  require "haddock"
  include Haddock
  Password.generate     # => "bowl9&bracky"
  Password.generate(30) # => "Phlebotomus2473?nonconditioned"
  Password.generate(8)  # => "amy7@rax"


On the command line:

  % ha-gen
  bowl9&bracky
  % ha-gen -l31
  symbolistically5<overthwartways


For more information:

http://stephencelis.com/2009/03/29/whats-the-password-haddock.html


== REQUIREMENTS

A newline-delimited words file. By default, it uses "/usr/share/dict/words" or
"/usr/share/words".

Otherwise:

  Haddock::Password.diction = "/path/to/words"


Or:

  % ha-gen -f /path/to/words


== INSTALL

RubyForge:

  % gem install haddock


GitHub:

  % gem install stephencelis-haddock --source=http://gems.github.com


== LICENSE

(The MIT License)

(c) 2009-* Stephen Celis, stephen@stephencelis.com.

Permission is hereby granted, free of charge, to any person obtaining a copy 
of this software and associated documentation files (the "Software"), to deal 
in the Software without restriction, including without limitation the rights 
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
copies of the Software, and to permit persons to whom the Software is 
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
