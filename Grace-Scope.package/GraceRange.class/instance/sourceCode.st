source access
sourceCode
	^ self scanner stream contents copyFrom: self startPosition to: self stopPosition 
	