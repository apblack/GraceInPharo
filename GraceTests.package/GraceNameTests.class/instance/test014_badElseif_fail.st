minigrace failing
test014_badElseif_fail
	| result |
	result := self good: #Module parse: 'print
  "hello"

if (4>5) then {
    print "it''s wrong" } 
elseif { 6<7 } then { 
    print "6 < 7" }
else { print "what?" }

'.
	self assert: result isA: #Module.
	self assert: result body items size = 4.
	result body items do: [ :each | self assert: each isA: #RequestWithArguments ].
	self assert: result body items first requestedName equals:'print(_)'.
	self assert: result body items second requestedName equals:'if(_)then(_)'.
	self assert: result body items third requestedName equals: 'elseif(_)then(_)'.
	self assert: result body items fourth requestedName equals: 'else(_)'
