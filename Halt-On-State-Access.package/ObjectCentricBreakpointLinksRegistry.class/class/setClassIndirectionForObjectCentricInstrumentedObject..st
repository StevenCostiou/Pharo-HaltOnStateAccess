accessing
setClassIndirectionForObjectCentricInstrumentedObject: anObject
	| class |
	class := anObject class.
	class isAnonymous
		ifTrue: [ class
				compiledMethodAt: #class
				ifAbsent: [ class compile: 'class ^class superclass' ] ].
	^ self registryAt: anObject