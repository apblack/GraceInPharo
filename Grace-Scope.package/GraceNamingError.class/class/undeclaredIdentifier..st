error handling
undeclaredIdentifier: anIdentifierNode
	| aMessage |
	aMessage := 'The name ' , anIdentifierNode name , ' has not been declared.  This may be a spelling mistake, or an attempt to access a name declared in another scope.'.
	self flag: 'Try to provide better diagnostics, e.g., by searching other scopes or by trying an approximate string match'.
	^ self new
		tag: anIdentifierNode;
		messageText: aMessage;
		signal