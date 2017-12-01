initialization
initialize
	fileRefs := SortedCollection sortBlock: [ :a :b | a basename <= b basename ]