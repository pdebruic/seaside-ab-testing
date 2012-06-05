versions
version110: spec
	<version: '1.1' imports: #('1.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec
				package: 'DHB' with: 'DHB-hfm.5';
				package: 'ABTesting' with: 'ABTesting-PaulDeBruicker.5' ]