tests
testHaltOnAllAccesses
	| obj1 obj2 cpt |
	obj1 := ReflectivityExamples new.
	obj2 := ReflectivityExamples new.
	obj1 haltOnAccess: #all.
	cpt := 0.
	[ obj1 ivarReadAndWrite.
	obj1 tag.
	obj1 tagExec: nil ]
		on: Halt
		do: [ :halt | 
			cpt := cpt + 1.
			halt resume ].
	self assert: cpt equals: 4.
	self
		shouldnt: [ obj2 ivarReadAndWrite.
			obj2 tag.
			obj2 tagExec: nil ]
		raise: Halt