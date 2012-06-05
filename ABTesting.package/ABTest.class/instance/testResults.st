accessing
testResults
	(aYes > 10 and: [ bYes > 10 ])
		ifTrue: [ 
			enoughResults := true.
			self confidenceLevel < (1 - DesiredConfidenceLevel)
				ifTrue: [ 
					highConfidence := true.
					self aConversion > self bConversion
						ifTrue: [ 
							winner := a.
							endDate := DateAndTime now ]
						ifFalse: [ 
							winner := b.
							endDate := DateAndTime now ] ] ]