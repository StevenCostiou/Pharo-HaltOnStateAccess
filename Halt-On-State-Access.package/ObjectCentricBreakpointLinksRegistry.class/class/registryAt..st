accessing
registryAt: anObject
	^ self registry at: anObject ifAbsentPut: Set new