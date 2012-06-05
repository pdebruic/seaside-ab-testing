accessing
pValue

	|x y|
	x:=DhbChiSquareDistribution degreeOfFreedom: 1.
	y:=(x confidenceLevel: self gTest).
	

	^y/100.
