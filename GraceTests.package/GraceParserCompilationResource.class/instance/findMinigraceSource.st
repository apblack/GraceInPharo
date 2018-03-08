resources
findMinigraceSource
	minigraceSource := { 
			'/users/black/Development/mg/gracelang/minigrace/' asFileReference .
	  		'/home/travis/build/gracelang/minigrace/' asFileReference } 
				detect: [ :each |	each exists ]