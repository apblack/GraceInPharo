api
addDirectory: aFileReference
	self roots: ((self roots , { aFileReference }) sort: [ :a :b | 
			a basename caseInsensitiveLessOrEqual: b basename  ]).
	self updateTree 