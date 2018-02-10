testing
isFreshMethod
	items ifEmpty: [ ^ false ].
	items last returnsAnObject ifFalse: [ ^ false ].
	1 to: (items size - 1) do: [ :i | 
		(items at: i) containsAReturn ifTrue: [ ^ false ]
	].
	^ true