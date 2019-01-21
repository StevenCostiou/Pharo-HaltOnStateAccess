*Halt-On-State-Access
haltOnAccess: access to: instVarName
	| link |
	link := self haltOnAccessLink.
	ObjectCentricBreakpointLinksRegistry
		addBreakpointLink: link
		forObject: self.
	self link: link toSlotNamed: instVarName option: access