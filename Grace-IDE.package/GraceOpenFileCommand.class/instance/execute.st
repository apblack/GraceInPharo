execute
execute
	| fileName file |
	fileName := UIManager default chooseFullFileNameMatching: #('grace').
	fileName ifNil: [  ^ self  ].
	file := fileName asFileReference.
	ide fileTree roots: ((ide fileTree roots copyWith: file) sort: [ :a :b | a baseName >= b baseName]).
	ide fileTree selectedItem: file
	