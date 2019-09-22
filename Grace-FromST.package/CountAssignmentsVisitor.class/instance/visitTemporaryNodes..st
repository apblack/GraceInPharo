visiting
visitTemporaryNodes: tempNodes
	tempNodes do: [ :each | assignmentCounts at: each nameForGrace put: 0 ]