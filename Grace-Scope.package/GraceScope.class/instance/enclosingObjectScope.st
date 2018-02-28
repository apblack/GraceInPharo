accessing
enclosingObjectScope
	| s |
	s := self.
	[ (s := s outerScope) isObjectScope ] whileFalse.
	^ s