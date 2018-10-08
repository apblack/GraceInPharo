as yet unclassified
createTabForFile: aFileReference
	| tab editor |
	editor := self instantiate: GraceSourcePresenter.
	editor
		onFile: aFileReference;
		ide: self ide;
		whenBuiltDo: [ :w | editor editingMorph: (self editingMorphInWidget: w widget) ].
	filesToEditorsDict at: aFileReference put: editor.
	tab := self newTab.
	tab
		label: aFileReference basenameWithoutExtension;
		presenter: editor;
		whenTabSelected: [ currentTab := tab.
			currentEditor := editor ];
		whenBuiltDo: [ :w | 
			w widget
				when: #tabDeleted
				evaluate: [ :_ | self tabDeletedFor: aFileReference ] ].
	currentTab := tab.
	currentEditor := editor.
	filesToTabsDict at: aFileReference put: tab.
	self tabsPresenter addTab: tab.
	^ tab