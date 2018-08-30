visiting
visitTemporaryNodes: tempNodes
	tempNodes do: [ :each | assignmentCounts at: each name put: 0 ]