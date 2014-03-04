FROM thomaswelton.com:5000/ruby

MAINTAINER Thomas Welton <thomaswelton@me.com>

# Install ttfautohint
RUN apt-get install -y -f libfreetype6 libqtcore4 libqtgui4
RUN URL='https://launchpad.net/ubuntu/+source/ttfautohint/0.97-1/+build/5252862/+files/ttfautohint_0.97-1_amd64.deb'; FILE=`mktemp`; wget "$URL" -qO $FILE && sudo dpkg -i $FILE; rm $FILE

# Install fontforge
RUN apt-get install -y fontforge

# Install sfnt2woff
RUN apt-get install -y zlib1g-dev unzip
RUN wget http://people.mozilla.org/~jkew/woff/woff-code-latest.zip && unzip woff-code-latest.zip -d sfnt2woff && cd sfnt2woff && make && mv sfnt2woff /usr/local/bin/

# Install fontcustom gem
RUN gem install fontcustom

VOLUME ["/fontcustom"]
