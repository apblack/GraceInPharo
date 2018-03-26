generated
visitAssignment: anAssignment
	^ GraceAssignmentAst 
			from: anAssignment range
			scope: anAssignment scope 
			lhs: (anAssignment lhs acceptVisitor: self) 
			rhs: (anAssignment rhs acceptVisitor: self)