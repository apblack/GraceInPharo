scope creation
visitObjectBody: anObjBody
	
	(anObjBody inTrait: anObjBody parent isTrait) ifTrue: [ 
		 anObjBody checkLegalForTrait ].
	self visitChildren: anObjBody.
	^ anObjBody