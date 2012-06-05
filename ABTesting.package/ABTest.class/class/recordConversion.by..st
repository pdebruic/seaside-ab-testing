accessing
recordConversion: aTestName by: aUser

|test version user |

test:=tests at: aTestName.
user:= users at: aUser.
version:= user at: aTestName.

(test a = version ) ifTrue: [(test aConverts includes: aUser) ifFalse:[test aYes: test aYes+1.
						test aConverts add: aUser]] .
(test b = version ) ifTrue: [(test bConverts includes: aUser) ifFalse:[test bYes: test bYes+1.
						test bConverts add: aUser]].
test winner ifNil:[ test testResults].
tests at: aTestName put: test.