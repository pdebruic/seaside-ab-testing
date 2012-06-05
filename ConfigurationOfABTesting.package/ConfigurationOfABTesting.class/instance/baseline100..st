baselines
baseline100: spec 
	<version: '1.0-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/ABTesting'.	
		spec	
			project: 'Seaside30' with: [
				spec
					className: 'ConfigurationOfSeaside30';
					loads: #('Core');
					file: 'ConfigurationOfSeaside30';
					repository: 'http://www.squeaksource.com/MetacelloRepository'];
			package:'DHB' with:[spec repository: 'http://www.squeaksource.com/DHBNumerical']
		yourself.
		
		spec 
			package: 'ABTesting'with:[spec requires: #('DHB' 'Seaside30')].
			
		spec
			group: 'default' with: #('Core');
			group: 'Core' with: #('ABTesting')].