private
reportLastMatch
	| previousMatch |
	previousMatch := super reportLastMatch.
	previousMatch isComment ifFalse: [ lastNonCommentToken := previousMatch ].
	^ previousMatch 