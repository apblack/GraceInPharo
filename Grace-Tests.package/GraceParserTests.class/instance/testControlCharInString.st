tests - badCharacters
testControlCharInString
	self bad: #Module parse: 'var x := "Here >><< is a +000C"
'