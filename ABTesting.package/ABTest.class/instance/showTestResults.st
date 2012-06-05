accessing
showTestResults
	| resultString |

	self enoughResults
		ifFalse: [ resultString := 'Not Enough Conversions' ]
		ifTrue: [ 
			self highConfidence
				ifTrue: [ 
					resultString := ((1 - self confidenceLevel) asString truncateTo: 4) , ' (A: '
						, (self aConversion asFloat asString truncateTo: 4) , ' vs. B: '
						, (self bConversion asFloat asString truncateTo: 4) , ') ' ]
				ifFalse: [ 
					resultString := 'Too close to call: ' , ((1 - self confidenceLevel) asString truncateTo: 4) , ' (A: '
						, (self aConversion asFloat asString truncateTo: 4) , ' vs. B: '
						, (self bConversion asFloat asString truncateTo: 4) , ') ' ] ].
	^ resultString