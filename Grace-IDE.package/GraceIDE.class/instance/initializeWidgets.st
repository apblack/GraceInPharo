initialization
initializeWidgets
	self initializeFileTree.
	self initializeToolbar.
	tabManager := (self instantiate: GraceFilesTabManager) ide: self.
	messages := self instantiate: GraceMessagePresenter