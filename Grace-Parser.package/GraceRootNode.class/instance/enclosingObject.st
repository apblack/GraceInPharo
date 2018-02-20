accessing
enclosingObject
	| node |
	node := self.
	[ 	node := node parent.
	  	node definesAnObject ] whileFalse.
	^ node