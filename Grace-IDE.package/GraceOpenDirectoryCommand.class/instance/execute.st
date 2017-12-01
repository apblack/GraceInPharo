execute
execute
	| file |
	file := FDOpenDirectoryDialog new
		defaultFolder: ide previousDirectory; 
		title: 'choose a directory from which to import the .grace files' translated;
		openModal.
	file ifNil: [  ^ self  ].
	file := file canonicalize.
	ide previousDirectory: file.
	ide fileTree addDirectory: file.
	ide fileTree selectFile: file