enumeration
rootNodePresenters
	^ self widget widget model rootNodes collect: [ :each | each nodeModel ]