test whole class translation
testScannerClass
	| translator generatedGrace parseTree |
	translator := ToGrace fromSmalltalkClass: GraceScanner.
	generatedGrace := translator translate.
	self should: [GraceParser parseStream: generatedGrace readStream] raise: GraceSyntaxError 
			whoseDescriptionIncludes: '"class"] not expected' description: 'wrong syntax error'