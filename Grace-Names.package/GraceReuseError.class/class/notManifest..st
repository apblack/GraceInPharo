error reporting
notManifest: aReuseNode
	self 
		signal: 'Sorry, you can''t ' , aReuseNode description , ' ' , 
					aReuseNode superExpr description , ', because it might be overriden'
		withTag: aReuseNode superExpr