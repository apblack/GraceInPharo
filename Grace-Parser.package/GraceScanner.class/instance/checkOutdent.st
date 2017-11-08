line handling
checkOutdent
	"The indentation has decreased.  Check that this is ok"
	
	braceChange = 0 ifTrue: [ 
		^ self lexicalError: 'do not reduce the indentation except when ending a block' ]