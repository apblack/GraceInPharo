file system
sourceDirectory
	
	^ { IceRepository sharedRepositoriesLocation / 'apblack' / 'GraceInPharo' / 'Grace-Modules' .
		 '/home/travis/build/apblack/GraceInPharo/Grace-Modules' asFileReference } detect: [ :each |
			each exists ]