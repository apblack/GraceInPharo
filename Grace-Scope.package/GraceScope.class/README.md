I represent a declaration scope in a Grace program

	names — a dictionary containing as keys all of the names declared in my scope.  The values are the 			Grace variable objects that represent the declaration.
	outerScope — the scope that lexically enloses me.  If It' at the top level, this is an EmptyScope.
	node — the node that defines me

