tests
testMethodWithBlockTemporary
	| desiredOutput |
	desiredOutput := 'method kind {
    // answers the name of the syntactic unit represnted by this node.  So, if I am a
    // GraceArgumentListNode, answers ''argument list''
    def nameStream = className.copyReplaceFrom 1 to 5 with "".readStream
    return String.streamContents { s →
        var ch
        s.nextPut (nameStream.next.asLowercase)
        while {
            (nameStream.position < ((nameStream.size - 4)))
        } do {
            ch := nameStream.next
            if (ch.isUppercase) then {
                ch := ch.lowercase
                s.nextPut " "
            }
            s.nextPut (ch)
        }
    }
}
'.
	self assertMethod: GraceRootNode >> #kind inGraceIs: desiredOutput