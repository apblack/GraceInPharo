instance creation
fromTypeDecl: aTypeDeclaration 
	| typeValue typeVariable |
	typeValue := self fromTypeNode: aTypeDeclaration value.
	typeVariable := aTypeDeclaration variable.
	typeVariable typeValue: typeValue.
	^ typeVariable 