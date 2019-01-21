tests
testHaltOnReadAccess
	| obj1 obj2 |
	obj1 := ReflectivityExamples new.
	obj2 := ReflectivityExamples new.
	obj1 haltOnAccess: #read.
	self should: [ obj1 ivarRead ] raise: Halt.
	self should: [ obj1 tag ] raise: Halt.
	self shouldnt: [ obj2 ivarRead ] raise: Halt.
	self shouldnt: [ obj2 tag ] raise: Halt