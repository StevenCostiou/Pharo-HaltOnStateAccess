accessing
setClassIndirectionForObjectCentricInstrumentedObject: anObject

	| class |
	self flag: 'This should be moved to the object-centric mechanism as an option.'.
	class := anObject class.
	class isAnonymous
		ifTrue: [ class
				compiledMethodAt: #class
				ifAbsent: [ class compile: 'class ^class superclass' ] ].
	^ self registryAt: anObject