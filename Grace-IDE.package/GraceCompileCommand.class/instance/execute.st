execute
execute

	| sourceString |
	sourceString := ide tabManager currentSourceCode.
	ide messages text: ''.
	[ SmallGraceCompiler compileModule: sourceString named: ide tabManager currentTabName ]
		on: GraceCompilationError 
	  	do: [ :ex |
			self displayError: ex description at: ex tag range.
			ex return: false ]