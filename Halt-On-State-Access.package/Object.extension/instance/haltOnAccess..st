*Halt-On-State-Access
haltOnAccess: access
	| link |
	link := self haltOnAccessLink.
	self class slotNames
		do: [ :slotName | self haltOnAccess: access to: slotName ].
	ObjectCentricBreakpointLinksRegistry
		addBreakpointLink: link
		forObject: self