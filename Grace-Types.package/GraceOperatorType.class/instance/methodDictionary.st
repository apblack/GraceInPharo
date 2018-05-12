accessing
methodDictionary
	^ methodDictionary ifNil: [ methodDictionary := self buildMethodDictionary ]