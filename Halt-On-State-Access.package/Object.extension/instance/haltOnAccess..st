*Halt-On-State-Access
haltOnAccess: access
	| link |
	link := self haltOnAccessLink.
	ObjectCentricBreakpointLinksRegistry
		addBreakpointLink: link
		forObject: self.
	self class slotNames
		do: [ :slotName | self link: link toSlotNamed: slotName option: access ]