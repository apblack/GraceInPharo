as yet unclassified
printOn: s
	s << 'an interface'.
	self parent isTypeDeclaration ifTrue: [ s << ' in type ' << parent declaredName ] 