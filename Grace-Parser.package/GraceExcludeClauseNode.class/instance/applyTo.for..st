applying operation
applyTo: aScope for: anExecutor
	aScope removeReused: self method declaredName ifAbsent: [ 
		^ anExecutor badExclusion: self ]