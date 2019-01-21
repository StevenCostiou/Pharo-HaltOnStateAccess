tests
testHaltOnReadAccessToIvar
	| obj1 obj2 |
	obj1 := ReflectivityExamples new.
	obj2 := ReflectivityExamples new.
	obj1 haltOnAccess: #read to: #ivar.
	self should: [ obj1 ivarRead ] raise: Halt.
	self shouldnt: [ obj2 ivarRead ] raise: Halt