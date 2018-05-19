conformance
buildMethodDictionary
	"my method dictionary contains only those methods that are common to all of my arguments"
	| tempDict result n |
	tempDict := GraceMultiDictionary new.
	operands do: [ :each |
		each keysAndValuesDo: [ :k :v | tempDict at: k add: v ].
	].
	n := operands size.
	result := Dictionary new.
	tempDict keysAndValuesDo: [ :k :vs |
		(vs size = n) ifTrue: [ result at: k put: (self meetOf: vs) ] ].
	^ result