accessing
pValue: aNumber

	|x|
	x:=DhbChiSquareDistribution degreeOfFreedom: 1.
	^x 	confidenceLevel: aNumber/100 .
