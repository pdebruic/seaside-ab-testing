accessing
testDuration
|x durationString| 
durationString:='Test incomplete'.
endDate notNil ifTrue:[
							x:= endDate - startDate.
							durationString :=	x days asString, ' days, ' , x hours asString , ' hours, ' , x minutes asString, ' minutes '].
^durationString .