execute
execute

	| parseTree nameTree sourceString |
	sourceString := self ide currentSourceCode.
	[	parseTree := GraceParser parseStream: sourceString readStream.
		nameTree := GraceBuildScopesVisitor new acceptNode: parseTree.
	] on: GraceSyntaxError , GraceLexicalError 
	  do: [ :ex |
			self displayError: ex description at: ex tag range.
			ex return: false ]