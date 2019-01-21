*Halt-On-State-Access
haltOnAccessEverywhere: access
	| link |
	self flag: #untested.
	link := self haltOnAccessLink.
	ObjectCentricBreakpointLinksRegistry
		addBreakpointLink: link
		forObject: self.
	self class allSlotsEverywhere
		do: [ :slotName | self link: link toSlotNamed: slotName option: access ]