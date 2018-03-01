printing
printOn: str
	super printOn: str.
	str << '(' << (self name ifNil: [ 'un-named' ]) << ')'