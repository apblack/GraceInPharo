initialization
initializeWidgets
	fileTree := self newTree.
	toolbar := self instantiate: MenuPresenter.
	tabManager := self newTabManager.
	messages := self instantiate: GraceMessagePresenter