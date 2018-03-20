tests-Object+Classes
testObjectInheritWithModifiers
	self good: #Expression as: #ObjectConstructor parse: 
		'object { inherit graceObject alias #(_) = !=(_) exclude ::(_) ; use identityTrait ; def x = 7 ; method + (other) -> Self { Sum(self, other) } }'