private
doBodyFor: aMethod
	self ensureASpace; << '{'; newline; indent.
	self doMethodComment: aMethod.
	self visitNode: aMethod body.
	self outdent; ensureNewline; << '}'