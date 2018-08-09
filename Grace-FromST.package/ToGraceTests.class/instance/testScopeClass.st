test whole class translation
testScopeClass
	| translator generatedGrace parseTree |
	translator := ToGrace fromSmalltalkClass: GraceRootNode.
	generatedGrace := String streamContents: [ :s | 
		translator translateOnto: s
	].
	self should: [GraceParser parseStream: generatedGrace readStream] raise: GraceSyntaxError 
			whoseDescriptionIncludes: '"class"] not expected' description: 'wrong syntax error'