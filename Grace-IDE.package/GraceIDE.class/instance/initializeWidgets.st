initialization
initializeWidgets
	self initializeFileTree.
	self initializeToolbar.
	tabManager := self newTabManager.
	messages := self instantiate: GraceMessagePresenter