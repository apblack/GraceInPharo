private
describeToken: token
	"should be moved to a GraceToken class"
	^ String streamContents: [ :s |
			s << token startPosition asString << '–' << token stopPosition asString.
			s << ' ' << (symbolNames at: token ids first) << ' '.
			s << token value printString << Character cr asString
	]