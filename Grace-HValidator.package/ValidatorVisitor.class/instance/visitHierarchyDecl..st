visiting
visitHierarchyDecl: aHierarchyDecl
	aHierarchyDecl subNodes do: [  :nd | self reportIf: nd isNotAChildOf: aHierarchyDecl superNode ].
	^ super visitHierarchyDecl: aHierarchyDecl