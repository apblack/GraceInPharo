naming
requestedName
	self assert: requestParts size = argLists size.
	^ String streamContents: [ :str |
		1 to: requestParts size do: [ :ix |
			str << (requestParts at: ix) name << '(_'.
			1 to: (argLists at: ix) size - 1 do: [ :_ | 	str << ',_' ].
			str << ')'
		]
	]