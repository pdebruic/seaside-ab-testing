accessing
testNamed: aByteString 
	^self tests at: aByteString ifAbsent:[nil]