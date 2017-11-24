api
createTabForFile: aFileReference
	| tab editor |
	editor := (self instantiate: GraceEditor)
					beForFile: aFileReference;
					yourself.
	filesToEditorsDict at: aFileReference put: editor.
	
	tab := self newTab
				label: aFileReference basename;
				model: editor;
				yourself.
	filesToTabsDict at: aFileReference put: tab.
	
	self tabsPresenter
		addTab: tab