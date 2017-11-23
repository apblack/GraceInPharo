initialization
initializeToolbar
	toolbar := self instantiate: MenuPresenter.
	toolbar 
		addGroup: [ :filegroup | 
			filegroup
				addItem: [ :item | 
					item
						name: 'open file';
						icon: (self iconNamed: #smallLeftFlush);
						action: [GraceOpenFileCommand executeOn: self] ]
					
		]