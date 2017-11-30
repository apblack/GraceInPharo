execute
execute
	| file |
	file := FDOpenDirectoryDialog new
		defaultFolder: ide previousDirectory; 
		title: 'choose a directory from which to import the .grace files' translated;
		openModal.
	file ifNil: [  ^ self  ].
	ide previousDirectory: file.
	ide fileTree addFile: file.
	ide fileTree selectFile: file