initialization
installNewTokenActionsArray: anArray
	| newMethod |
	newMethod := String streamContents: [ :s | 
		s << 'tokenActions' ; cr ; tab ; << '^ '; << anArray printString ]. 
	self compile: newMethod classified: 'generated'