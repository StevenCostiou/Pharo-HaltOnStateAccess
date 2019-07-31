*Halt-On-State-Access
haltOnAccess: access to: instVarName
	| link |
	link := self haltOnAccessLink.
	self link: link toSlotNamed: instVarName option: access.
	ObjectCentricBreakpointLinksRegistry
		addBreakpointLink: link
		forObject: self