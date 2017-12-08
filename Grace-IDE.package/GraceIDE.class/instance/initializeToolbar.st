initialization
initializeToolbar
	toolbar := self instantiate: MenuPresenter.
	toolbar 
		addGroup: [ :filegroup | 
			filegroup
				addItem: [ :item | 
					item
						name: 'load file';
						icon: (self iconNamed: #smallLeftFlush);
						action: [GraceOpenFileCommand executeOn: self] ];
				addItem: [ :item | 
					item
						name: 'load directory';
						icon: (self iconNamed: #smallOpen);
						action: [GraceOpenDirectoryCommand executeOn: self] ]
					
		];
		addGroup: [ : modulegroup |
			modulegroup
				addItem: [  :item |
					item
						name: 'run';
						description: 'run the parser';
						icon: (self iconNamed: #glamorousPlay);
						action: [GraceCompileCommand executeOn: self] ];
				addItem: [  :item |
					item
						name: 'save';
						icon: (self iconNamed: #glamorousSave);
						action: [ GraceSaveCommand executeOn: self ] ]
		]