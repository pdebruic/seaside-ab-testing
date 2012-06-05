accessing
initialize 

	super initialize .
	startDate:=DateAndTime now.
	aYes:=bYes:=aViews:=bViews :=0.
	winner:=nil.
	aConverts :=OrderedCollection new.
	bConverts :=OrderedCollection new.
	enoughResults := false.
	highConfidence := false.
	DesiredConfidenceLevel :=0.99.

