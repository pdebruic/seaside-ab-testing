as yet unclassified
renderResults: html
	self dashboard test: (ABTest testNamed: self sampleTestName).
	html render: self dashboard