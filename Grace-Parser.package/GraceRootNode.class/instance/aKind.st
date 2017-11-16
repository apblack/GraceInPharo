accessing
aKind
	"answers my kind, preceeded by 'a ' or 'an ', as appropriate"
	
	| kind |
	kind := self kind.
	^ (('aeioAEIO' includes: kind first) ifTrue: [ 'an ' ] ifFalse: [ 'a ' ]) , kind
