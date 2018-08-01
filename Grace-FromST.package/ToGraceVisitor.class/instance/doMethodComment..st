private
doMethodComment: aMethod
	| comment commentLines |
	comment := aMethod firstPrecodeComment ifNil: [ ^ self ].
	commentLines := comment withoutQuoting substrings: { Character cr }.
	commentLines do: [ :each |
			self << '// '.
			self << each trim.
			self newline
	]