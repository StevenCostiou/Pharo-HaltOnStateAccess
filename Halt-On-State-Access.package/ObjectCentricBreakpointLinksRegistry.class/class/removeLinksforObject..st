accessing
removeLinksforObject: anObject
	(self breakpointLinkForObject: anObject)
		do: [ :link | 
			link linkInstaller uninstallPermaLinkFor: link.
			link uninstall ].
	self registry removeKey: anObject