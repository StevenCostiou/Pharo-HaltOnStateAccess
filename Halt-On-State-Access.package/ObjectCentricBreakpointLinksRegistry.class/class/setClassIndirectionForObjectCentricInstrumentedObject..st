accessing
setClassIndirectionForObjectCentricInstrumentedObject: anObject
	| class |
	self
		flag: 'This should be moved to the object-centric mechanism as an option.'.
	class := anObject class.
	class isAnonymous
		ifTrue: [ class methodDict
				at: #class
				ifAbsent: [ class compile: 'class ^super class superclass' ] ]