naming
requestedName
	argLists isEmpty ifTrue: [ ^ annotationParts first name ].
	self assert: [annotationParts size = argLists size].
	^ String streamContents: [ :str |
		1 to: annotationParts size do: [ :ix |
			str << (annotationParts at: ix) name << '(_'.
			1 to: (argLists at: ix) size - 1 do: [ :_ | str << ',_' ].
			str << ')'
		]
	]