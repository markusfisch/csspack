#!/usr/bin/lua

local s = io.read( "*all" )

-- remove comments
s = s:gsub( "/[*]+.-[*]+/", "" )
-- remove newlines and white space at the beginning and at the end of lines
s = s:gsub( "[\t ]*[\r\n]+[\t ]*", "" )
-- condense tabs and blanks
s = s:gsub( "[\t ]+", " " )
-- remove unnecessary blanks
s = s:gsub( "[ ]+\{", "{" )
s = s:gsub( "([:\(\{,;])[ ]+", "%1" )
s = s:gsub( "[ ]+([\)\}])", "%1" )

io.write( s.."\n" )
