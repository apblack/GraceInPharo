file system
sourceDirectory
	
	^ { IceLibgitRepository sharedRepositoriesLocation / 'apblack' / 'GraceInPharo' / 'Grace-Modules' .
		 '/home/travis/build/apblack/GraceInPharo/Grace-Modules' asFileReference } detect: [ :each |
			each exists ]