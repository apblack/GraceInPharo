naming
requestedName
	argLists isEmpty ifTrue: [
		"This can happen if there is a type argument, but no value arguments."
		self assert: [requestParts size = 1].
		^ requestParts first name
	].
	self assert: [requestParts size = argLists size].
	^ String streamContents: [ :str |
		1 to: requestParts size do: [ :ix |
			str << (requestParts at: ix) name << '(_'.
			1 to: (argLists at: ix) size - 1 do: [ :_ | str << ',_' ].
			str << ')'
		]
	]