baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 	spec baseline: 'ReflectivityDev' 
				with: [ spec repository: 'github://StevenCostiou/Reflectivity-dev/repository' ].
			spec blessing: #baseline.
			spec repository: 'github://StevenCostiou/Pharo-HaltOnStateAccess'.
			spec description: 'Halt on state access beta'.
			spec package: 'Halt-On-State-Access'. ]
