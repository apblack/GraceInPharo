module files
addModuleFilesToIndex
	| repo dir moduleFiles |
	
	repo := IceRepository registry detect: [ :each | each name = 'GraceInPharo' ].
	dir := repo location / 'Grace-Modules'.
	moduleFiles := dir entries select: [ : each | 
		each basename endsWith: '.grace' ].
	repo addFilesToIndex: (moduleFiles collect: [ :each | each fullName ])