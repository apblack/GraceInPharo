scope creation
addOuterBindingFor: enclosingObjectScope in: newScope
	newScope
		add:
			((GracePseudovariable fromParseTreeNode: enclosingObjectScope node)
				attributeScope: enclosingObjectScope)
		withName: 'outer'