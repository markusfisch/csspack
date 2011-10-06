#!/bin/awk -f
BEGIN { RS="\f" }
{
	# remove comments
	gsub( /\/\*[^*]*\*+([^/][^*]*\*+)*\//, "", $0 )
	# remove newlines and white space at the beginning and at the end of lines
	gsub( /[\t ]*[\r\n]+[\t ]*/, "", $0 )
	# condense tabs and blanks
	gsub( /[\t ]+/, " ", $0 )
	# remove unnecessary blanks
	gsub( /:[ ]+/, ":", $0 )
	gsub( /\([ ]+/, "(", $0 )
	gsub( /[ ]+\{/, "{", $0 )
	gsub( /\{[ ]+/, "{", $0 )
	gsub( /[ ]+\)/, ")", $0 )
	gsub( /[ ]+\}/, "}", $0 )
	gsub( /,[ ]+/, ",", $0 )
	gsub( /;[ ]+/, ";", $0 )
}
END { print }
