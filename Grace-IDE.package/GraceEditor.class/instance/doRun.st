running
doRun
	| parseTree nameTree |
	
	[	parseTree := GraceParser parseStream: sourceText readStream.
		nameTree := GraceBuildScopesVisitor new acceptNode: parseTree.
		self halt
	] on: GraceSyntaxError 
	  do: [ :ex |
			self
				displayError: ex description
				at: ex tag position.
			ex retunr: false ]