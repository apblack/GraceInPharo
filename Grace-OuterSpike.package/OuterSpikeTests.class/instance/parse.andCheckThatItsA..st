test helpers
parse: aString andCheckThatItsA: kind
	^ self good: #Expression as: kind parse: aString