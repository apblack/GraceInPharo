compiling
compileModule: aStream named: aName
	| checked |
	checked := self compileStream: aStream named: aName.
	^ GraceModuleRegistry uniqueInstance add: checked