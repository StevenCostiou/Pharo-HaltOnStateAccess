accessing
addBreakpointLink: permalink forObject: anObject
	self setClassIndirectionForObjectCentricInstrumentedObject: anObject.
	(self breakpointLinkForObject: anObject) add: permalink