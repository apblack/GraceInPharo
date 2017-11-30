api
createTabForFile: aFileReference additionalSelectionAction: aBlock
	| tab editor |
	editor := (self instantiate: GraceEditor)
		onFile: aFileReference;
		yourself.
	filesToEditorsDict at: aFileReference put: editor.
	tab := self newTab.
	tab label: aFileReference basenameWithoutExtension;
		model: editor;
		whenTabSelected: [ currentTab := tab. currentEditor := editor. aBlock value ].
	currentTab := tab.
	currentEditor := editor.
	filesToTabsDict at: aFileReference put: tab.
	self tabsPresenter addTab: tab.
	^ tab