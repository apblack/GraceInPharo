initialization
initializeWidgets
	sourcePane := (self instantiate: GraceSourcePresenter)
		acceptBlock: [ :text | self compile: text asString ].
	messages := self newText.
	saveButton := self newButton
		label: 'Save';
		icon: (self iconNamed: #glamorousSave).
	saveAsButton := self newButton
		label: 'Save as…';
		icon: (self iconNamed: #glamorousSaveToUrl).
	runButton := self newButton
		label: 'Run';
		icon: (self iconNamed: #glamorousPlay).
	self focusOrder
		add: sourcePane;
		add: saveButton;
		add: saveAsButton;
		add: runButton;
		add: messages