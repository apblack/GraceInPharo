tests
testScopeClass
	| translator generatedGrace parseTree |
	translator := ToGrace fromSmalltalkClass: GraceRootNode.
	generatedGrace := String streamContents: [ :s | 
		translator translateOnto: s
	].
	parseTree := GraceParser parseStream: generatedGrace readStream.
	self assert: (parseTree isKindOf: GraceModuleNode) description: 'parse tree is not for a module'