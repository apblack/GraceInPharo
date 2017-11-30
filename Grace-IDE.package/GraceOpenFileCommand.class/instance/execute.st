execute
execute
	| file |
	file := FDOpenFileDialog new 
		defaultFolder: ide previousDirectory;
		fileFilters: #('*.grace');
		title: 'choose a file to open';
		openModal.
	file ifNil: [  ^ self  ].
	ide previousDirectory: file parent.
	ide fileTree roots: ((ide fileTree roots copyWith: file) sort: [ :a :b | a basename >= b basename]).
	"ide fileTree selectedItem: file"

