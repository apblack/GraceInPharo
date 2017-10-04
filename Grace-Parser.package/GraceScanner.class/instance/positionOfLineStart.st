line handling
positionOfLineStart
	| savedPosition result |
	savedPosition := stream position.
	stream position: start.
	[ newlineChars includes: stream next ] whileTrue.
	result := stream position.
	stream position: savedPosition.
	^ result