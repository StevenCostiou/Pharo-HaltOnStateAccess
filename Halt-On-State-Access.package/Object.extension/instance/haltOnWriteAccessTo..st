*Halt-On-State-Access
haltOnWriteAccessTo: anInstVarName
	^self haltOnAccess: #write to: anInstVarName asSymbol