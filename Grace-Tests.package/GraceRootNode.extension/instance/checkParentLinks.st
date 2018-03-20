*Grace-Tests-debugging
checkParentLinks
	self nodesDo: [ :each |
		 self == each parent ifFalse: [ | message |
			message := 'bad parent link to ' , each parent printString ,
				' found in ' , each printString , '; should be to ' , self printString.
			self error: message ]
	].
	self nodesDo: [ :each | each checkParentLinks ]