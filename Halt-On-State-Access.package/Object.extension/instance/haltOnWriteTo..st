*Halt-On-State-Access
haltOnWriteTo: anInstVarName
	^self haltOnAccess: #write to: anInstVarName asSymbol