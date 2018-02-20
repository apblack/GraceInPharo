printing
printStringOn: msg
	msg << self reuseString << self definition kind <<
			' declared on ' << self definition rangeLongPrintString 