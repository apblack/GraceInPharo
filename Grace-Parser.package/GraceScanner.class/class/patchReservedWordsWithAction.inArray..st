initialization
patchReservedWordsWithAction: action inArray: actions
	self reservedWords do: [ :rw | | ix |
		ix := symbolNames indexOf: '"' , rw , '"'.
		(ix = 0) ifTrue: [ 
			ix := symbolNames indexOf: '<' , rw , '>'.
			(ix = 0) ifTrue: [ 
				self error: 'Grammar error: there is no symbol for the reserved word ' , rw 
			] ifFalse: [ self makeActionAt: ix of: actions be: action ]
		] ifFalse: [ 
			self makeActionAt: ix of: actions be: action
		]
	]