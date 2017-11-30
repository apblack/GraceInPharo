execute
execute

	| sourceString |
	sourceString := self ide tabManager currentSourceCode.
	self ide messages text: ''.
	[ SmallGraceCompiler compileString: sourceString ]
		on: GraceCompilationError 
	  	do: [ :ex |
			self displayError: ex description at: ex tag range.
			ex return: false ]