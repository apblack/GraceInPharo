parentage
tellChildrenAboutTheirParent
	self nodesDo: [ :each | each parent: self ].
	^ self