tests
testHaltOnAllAccessesToIvar
	| obj1 obj2 cpt |
	obj1 := ReflectivityExamples new.
	obj2 := ReflectivityExamples new.
	obj1 haltOnAccess: #all to: #ivar.
	cpt := 0.
	[ obj1 ivarReadAndWrite ]
		on: Halt
		do: [ :halt | 
			cpt := cpt + 1.
			halt resume ].
	self assert: cpt equals: 2.	
	self shouldnt: [ obj2 ivarReadAndWrite ] raise: Halt