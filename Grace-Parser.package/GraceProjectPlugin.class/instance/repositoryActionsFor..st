accessing
repositoryActionsFor: aRepository
	^ { GLMGenericAction new
		action: [ :presentation | self addModuleFilesToIndex ];
		category: 'GraceInPharo';
		showTitle: 'Add modules files to index'; 
		yourself .
		
		GLMGenericAction new
		action: [ :presentation | GraceParser removeAllGenerated ];
		category: 'GraceInPharo';
		showTitle: 'Delete generated parser methods'; 
		yourself 
	  }
