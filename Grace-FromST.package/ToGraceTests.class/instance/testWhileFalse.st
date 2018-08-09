tests
testWhileFalse
	self assertMethod: GraceRootNode >> #enclosingObject inGraceIs: 'method enclosingObject {
    var node
    node := self
    do {
        node := node.parent
    } while {
        node.definesAnObject.not
    }
    return node
}
' 