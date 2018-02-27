file system
locateSourceFor: aModule
	| fileName pathName |
	fileName := aModule , '.grace'.
	pathName := self sourceDirectory / fileName.
	pathName exists ifFalse: [ 
		GraceCompilationError signal: 'can''t find source for module "' , 
				aModule , '" (looked at ' , pathName fullName , ')' ].
	^ pathName