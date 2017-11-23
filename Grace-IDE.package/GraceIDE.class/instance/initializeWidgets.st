initialization
initializeWidgets
	self initializeFileTree.
	self initializeToolbar.
	tabManager := self instantiate: GraceFilesTabManager.
	messages := self instantiate: GraceMessagePresenter