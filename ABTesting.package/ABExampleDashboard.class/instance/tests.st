accessing
tests
	^ tests ifNil: [tests:=self exampleABTests ]