execute
execute

	| sourceString |
	GraceSaveCommand executeOn: ide.
	sourceString := ide tabManager currentSourceCode asString.
	ide messages text: ''.
	[ GraceCompiler compileModule: sourceString named: ide tabManager currentTabName ]
		on: GraceCompilationError 
	  	do: [ :ex |
			self displayError: ex description at: ex tag.
			ex return: false ]