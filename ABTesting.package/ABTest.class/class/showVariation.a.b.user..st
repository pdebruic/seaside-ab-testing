accessing
showVariation: aTestName a: optionA b: optionB user: aUser
	| show test user |

	(self users includesKey: aUser)
		ifFalse: [ self users at: aUser put: Dictionary new ].
	user := self users at: aUser.
	test := self tests at: aTestName ifAbsent: [ self newTest: aTestName a: optionA b: optionB ].
	show := test winner.
	show
		ifNil: [ 
			(user includesKey: aTestName)
				ifTrue: [ show := user at: aTestName ]
				ifFalse: [ 
					show := test getAorB.
					user at: aTestName put: show.
					show = optionA
						ifTrue: [ test aViews: test aViews + 1 ]
						ifFalse: [ test bViews: test bViews + 1 ] ].
			self tests at: aTestName put: test ].
	^ show