generated
visitTypeDeclaration: aTypeDeclaration
	"Notice that we do not visit the rhs value of the declaration, because this would lead to 
	infinite regress in the (usual) case where the rhs mentions aTypeDeclaration id"
	^ aTypeDeclaration variable