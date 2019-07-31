*Halt-On-State-Access
haltOnAccess: access
	| link |
	link := self haltOnAccessLink.
	self class slotNames
		do: [ :slotName | self link: link toSlotNamed: slotName option: access ].
	ObjectCentricBreakpointLinksRegistry
		addBreakpointLink: link
		forObject: self