replacing
replace: originalSmaCCParseNode with: newSmaCCParseNode
	"overrides the definition in SmaCCParseNode, to not munge the original source code when a subsitution is performed."
	SmaCCParseNode instSize + 1 to: self class instSize do:
		[ :i | 
		| each |
		each := self instVarAt: i.
		each == originalSmaCCParseNode
			ifTrue: [ self instVarAt: i put: newSmaCCParseNode ]
			ifFalse:
				[ (each isKindOf: SequenceableCollection)
					ifTrue:
						[ each
							keysAndValuesDo:
								[ :index :value | 
								value == originalSmaCCParseNode
									ifTrue: [ each at: index put: newSmaCCParseNode ] ] ] ] ].
	newSmaCCParseNode parent: self