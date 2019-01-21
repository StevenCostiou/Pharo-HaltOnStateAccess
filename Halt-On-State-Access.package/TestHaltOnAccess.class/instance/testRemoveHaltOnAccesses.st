tests
testRemoveHaltOnAccesses
	| obj1 |
	obj1 := ReflectivityExamples new.
	obj1 haltOnAccess: #all.
	self assert: obj1 class isAnonymous.
	obj1 removeStateAccessHalts.
	self deny: obj1 class isAnonymous.
	self
		shouldnt: [ obj1 ivarReadAndWrite.
			obj1 tag.
			obj1 tagExec: nil ]
		raise: Halt