versions
version100: spec 
	<version: '1.0' imports: #('1.0-baseline') >
	
	spec for: #common do: [
		spec blessing: #release.
		spec
			project: 'Seaside30' with: #stable;
			package: 'DHB' with: 'DHB-hfm.5';
			yourself.
		spec 
			package: 'ABTesting' with: 'ABTesting-PaulDeBruicker.3'].