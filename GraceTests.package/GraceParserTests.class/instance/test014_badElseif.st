tests-indentation
test014_badElseif
	| result |
	result := self good: #Module parse: 'print
  "hello"

if (4>5) then {
    print "it''s wrong" } 
elseif { 6<7 } then { 
    print "6 < 7" }
else { print "what?" }

method print(str) { ... }
'.
	self assert: result isA: #Module.
	self assert: result items size equals: 5.
	(result items copyWithoutIndex: 5) do: [ :each | self assert: each isA: #ReceiverlessRequest ].
	self assert: result items first requestedName equals:'print(_)'.
	self assert: result items second requestedName equals:'if(_)then(_)'.
	self assert: result items third requestedName equals: 'elseif(_)then(_)'.
	self assert: result items fourth requestedName equals: 'else(_)'.
	self assert: result items fifth isA: #MethodDeclaration
