*Halt-On-State-Access
haltOnReadAccessTo: anInstVarName
	^self haltOnAccess: #read to: anInstVarName asSymbol