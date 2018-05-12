gt-inspector-extension
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0> 
	^ (composite fastList)
		title: 'Source code';
		display: [ OrderedCollection with: self sourceCode ]