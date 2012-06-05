accessing
newTest: aName a: optionA b: optionB
|x|
x:=ABTest new
			testName: aName;
			a: optionA;
			b: optionB.
tests at: aName put: x.

^x