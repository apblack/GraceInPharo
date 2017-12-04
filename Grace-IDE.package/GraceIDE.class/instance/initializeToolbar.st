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
						name: 'save & run';
						icon: (self iconNamed: #glamorousPlay);
						action: [GraceCompileCommand executeOn: self] ]
		]