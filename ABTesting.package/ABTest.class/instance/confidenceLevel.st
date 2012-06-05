accessing
confidenceLevel
 |cl x aNo bNo|
	cl:=0.
	self views = 0 ifFalse:[aNo:=aViews - aYes.
							bNo := bViews - bYes.
							cl:=ABGTest getPValueWithAYes: aYes aNo: aNo bYes: bYes bNo: bNo].
	^cl