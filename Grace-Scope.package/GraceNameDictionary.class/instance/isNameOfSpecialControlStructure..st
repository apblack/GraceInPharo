private
isNameOfSpecialControlStructure: aName
	^ self class ctrlStructureRegEx matches: aName