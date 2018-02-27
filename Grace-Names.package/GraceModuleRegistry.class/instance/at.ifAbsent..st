lookup
at: aName ifAbsent: aBlock
	"answers the module registered with aName.  Tries to recompile 
	 if it's out of date with respect to the source."
	| module |
	module := modules at: aName ifAbsent: [ ^ aBlock value ].
	module compilationTime > (self class modificationTimeOf: aName) 
		ifTrue: [ ^ module ].
	^ self class tryToCompile: aName