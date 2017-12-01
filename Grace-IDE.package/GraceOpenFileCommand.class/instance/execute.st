execute
execute
	| file |
	file := FDOpenFileDialog new 
		defaultFolder: ide previousDirectory;
		fileFilters: #('*.grace');
		title: 'choose a file to open';
		openModal.
	file ifNil: [  ^ self  ].
	file := file canonicalize.
	ide previousDirectory: file parent.
	ide fileTree addFile: file

