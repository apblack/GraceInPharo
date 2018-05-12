accessing value
numberValue
	| stringVal |
	stringVal := self value.
	(stringVal includes: $E) ifTrue: [ stringVal := stringVal copyReplaceAll: 'E' with: 'e'  ].
	"the String>>asNumber method doesn't recognize 'E' when capitalized"
	(stringVal includes: $+) ifTrue: [ stringVal := stringVal copyReplaceAll: '+' with: ''  ].
	"the String>>asNumber method doesn't recognize '+' before the exponent"
	^ stringVal asNumber
	