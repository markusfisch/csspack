#!/usr/bin/env ruby

puts $stdin.read.
	# remove comments
	gsub( /\/\*[^*]*\*+([^\/][^*]*\*+)*\//, '' ).
	# remove newlines and white space at the beginning and at the end of lines
	gsub( /[\t ]*[\r\n]+[\t ]*/, '' ).
	# condense tabs and blanks
	gsub( /[\t ]+/, ' ' ).
	# remove unnecessary blanks
	gsub( /[ ]+\{/, '{' ).
	gsub( /([:\(\{,;])[ ]+/, '\1' ).
	gsub( /[ ]+([\)\}])/, '\1' )+"\n";
