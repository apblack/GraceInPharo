token-actions
error
	"handle illegal characters"

	matchActions := {self errorId}.
	^ self createTokenFor: outputStream contents