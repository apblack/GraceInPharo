execute
execute
	| file |
	file := FDOpenFileDialog new 
		defaultFolder: ide previousDirectory;
		fileFilters: #('*.grace');
		title: 'choose a file to open';
		openModal.
	file ifNil: [  ^ self  ].
	ide fileTree roots: ((ide fileTree roots copyWith: file) sort: [ :a :b | a baseName >= b baseName]).
	"ide fileTree selectedItem: file"

