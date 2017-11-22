initialization
initializePresenter
	| tab |
	super initializePresenter.
	tab := self newTab.
	tab
		label: 'Test';
		model: (self instantiate: GraceEditor).
	self tabManager
		addTab: tab