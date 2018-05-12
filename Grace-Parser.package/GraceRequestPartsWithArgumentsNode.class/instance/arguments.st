argument access
arguments
	| result |
	result := OrderedCollection new.
	argLists do: [ :aList | result addAllLast: aList args].
	^ result