special control structures
isRequestOfSpecialControlStructure
	^ (self requestedName matchesRegex: 'if\(_\)then\(_\)(elseif\(_\)then\(_\))*(else\(_\))?') or: 
		[ (self requestedName matchesRegex: 'match\(_\)(case\(_\))+')  or:
			[ self requestedName matchesRegex: 'try\(_\)(catch\(_\))*(finally(_))?' ] ]