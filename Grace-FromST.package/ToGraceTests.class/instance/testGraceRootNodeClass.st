test whole class translation
testGraceRootNodeClass
	| translator generatedGrace parseTree outputFile |
	translator := ToGrace fromSmalltalkClass: GraceRootNode.
	generatedGrace := String streamContents: [ :s | 
		translator translateOnto: s
	].
	outputFile := FileLocator home / 'Desktop' / 'graceCode' / 'graceRootNode' , 'grace'.
	outputFile ensureDelete.
	outputFile writeStream nextPutAll: generatedGrace; close.
	parseTree := GraceParser parseStream: generatedGrace readStream.
	self assert: (parseTree isKindOf: GraceModuleNode) description: 'parse tree is not for a module'