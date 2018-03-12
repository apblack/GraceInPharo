initialization
patchReservedWordsWithAction: action inArray: actionArray
	self reservedWords do: [ :rw | | ix |
		ix := symbolNames indexOf: '"' , rw , '"'.
		(ix = 0) ifTrue: [ 
			ix := symbolNames indexOf: '<' , rw , '>'.
			(ix = 0) ifTrue: [ 
				self error: 'Grammar error: there is no symbol for the reserved word ' , rw 
			] ifFalse: [ actionArray at: ix put: action ]
		] ifFalse: [ 
			actionArray at: ix put: action
		]
	]