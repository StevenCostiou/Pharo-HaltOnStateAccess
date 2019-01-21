tests
testHaltOnWriteAccessToIvar
	| obj1 obj2 |
	obj1 := ReflectivityExamples new.
	obj2 := ReflectivityExamples new.
	obj1 haltOnAccess: #write to: #ivar.
	self should: [ obj1 ivarWrite ] raise: Halt.
	self shouldnt: [ obj2 ivarWrite ] raise: Halt