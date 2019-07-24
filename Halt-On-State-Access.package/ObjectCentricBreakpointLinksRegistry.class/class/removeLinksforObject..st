accessing
removeLinksforObject: anObject
	<script>
	(self breakpointLinkForObject: anObject)
		do: [ :link | 
			link linkInstaller uninstallPermaLinkFor: link.
			link uninstall ].
	self registry removeKey: anObject