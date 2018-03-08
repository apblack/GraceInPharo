error reporting
notManifest: aReuseNode
	self 
		signal: 'sorry, you can''t ' , aReuseNode description , ' ' , 
					aReuseNode superExpr description , ', because it might be overriden'
		node: aReuseNode superExpr