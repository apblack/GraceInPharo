tests-Object+Classes
testObjectInherit
	self good: #Expression as: #ObjectConstructor parse: 
		'object { inherit graceObject ; use identityTrait ; def x = 7 ; method + (other) -> Self { Sum(self, other) } }'