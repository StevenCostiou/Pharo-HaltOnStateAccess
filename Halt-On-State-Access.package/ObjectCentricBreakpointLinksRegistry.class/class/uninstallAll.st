accessing
uninstallAll
	<script>
	self registry keys
		do: [ :anObject | self removeLinksforObject: anObject ]