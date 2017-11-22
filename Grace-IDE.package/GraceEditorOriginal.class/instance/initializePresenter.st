initialization
initializePresenter
	super initializePresenter.
	messages enabled: false.			"text entry not possible"
	saveButton action: [ self doSave ].
	saveAsButton action: [ self doSaveAs ].
	runButton action: [ self doRun ].
