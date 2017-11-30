initialization
initializeWidgets
	question := self instantiate: LabelPresenter.
	okButton := self instantiate: ButtonPresenter.
	cancelButton := self instantiate: ButtonPresenter.
	okButton
		label: 'OK';
		action: [ self result: true. self window close ].
	cancelButton
		label: 'Cancel';
		action: [ self result: false. self window close ]