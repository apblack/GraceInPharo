updating parser
isParserOutdated
	"Check if the parser has been recompiled since the source code was changed"
	
	| graceParserClass objectTime sourceTime |
	graceParserClass := Smalltalk globals at: #GraceParser ifAbsent: [ ^ true ].
	(graceParserClass class includesSelector: #cacheId) ifFalse: [ ^ true ].
	objectTime := DateAndTime fromString: (graceParserClass cacheId).
	sourceTime := self dateAndTimeFromStamp: (GraceParser class >> #definitionComment) stamp.
	^ objectTime < sourceTime