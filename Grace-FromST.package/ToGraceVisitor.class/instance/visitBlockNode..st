visiting
visitBlockNode: aBlock
	| parameters |
	self << '{ '.
	parameters := aBlock arguments.
	parameters do: [ :each | self << each nameForGrace ] separatedBy: [ self << ', ' ].
	parameters ifNotEmpty: [ self << ' →' ].
	self newline; indent.
	self visitNode: aBlock body.
	self outdent; newline; << '}'