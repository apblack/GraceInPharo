test whole class translation
testGraceRootNodeClass
	| translator generatedGrace outputFile |
	translator := ToGrace fromSmalltalkClass: GraceRootNode.
	generatedGrace := String streamContents: [ :s | 
		translator translateOnto: s
	].
	outputFile := FileLocator home / 'Desktop' / 'graceCode' / 'graceRootNode' , 'grace'.
	outputFile ensureDelete.
	outputFile writeStream nextPutAll: generatedGrace; close.
	self should: [ GraceParser parseStream: generatedGrace readStream ] raise: GraceSyntaxError 
			whoseDescriptionIncludes: '"class"] not expected' description: 'wrong syntax error'
