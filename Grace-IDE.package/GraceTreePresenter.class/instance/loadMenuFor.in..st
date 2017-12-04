menu
loadMenuFor: aFileRef in: aMenu
	aMenu
		addGroup: [ :aGroup | 
			(aFileRef isDirectory and: [ aFileRef isWorkspace not ])
				ifTrue: [ aGroup
						addItem: [ :anItem | 
							anItem
								name: 'Remove from workspace';
								action: [ self remove: aFileRef ];
								shortcut: $x command ] ].
			(aFileRef isFile and: [ self workspace includes: aFileRef ])
				ifTrue: [ aGroup
						addItem: [ :anItem | 
							anItem
								name: 'Remove from workspace';
								action: [ self remove: aFileRef ];
								shortcut: $x command ] ].
			aFileRef isFile
				ifTrue: [ aGroup
						addItem: [ :anItem | 
							anItem
								name: 'Delete from file system';
								action: [ self delete: aFileRef ];
								shortcut: Character delete shift ] ] ]