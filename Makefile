#
# Created       : 2015 Sep 04 (Fri) 14:46:10 by Harold Carr.
# Last Modified : 2015 Sep 04 (Fri) 15:14:45 by Harold Carr.
#

b build : FORCE
	stack build

r run : FORCE
	stack exec utah-haskell-exe

t test : FORCE
	curl 127.0.0.1:3000/foo
	curl 127.0.0.1:3000/bar
	curl 127.0.0.1:3000/baz
	curl 127.0.0.1:3000/reg?email=harold -d '{ "json" : "format" }'

c clean : FORCE
	stack clean

FORCE ::