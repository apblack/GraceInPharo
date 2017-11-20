initialization
patchReservedWordsWithAction: action inArray: actionArray
	self reservedWords do: [ :rw | | ix |
		ix := symbolNames indexOf: '"' , rw , '"'.
		(ix ~= 0) ifTrue: [
			actionArray at: ix put: action ]
	]