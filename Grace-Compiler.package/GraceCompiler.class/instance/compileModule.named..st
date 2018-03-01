compiling
compileModule: aStream named: aName
	| checked |
	checked := self compileStream: aStream named: aName.
	Transcript show: 'Compiled '; show: aName; cr.
	^ GraceModuleRegistry uniqueInstance add: checked