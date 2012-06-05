as yet unclassified
getPValueWithAYes: aYes aNo: aNo bYes: bYes bNo: bNo
	| x |
	x := self new
		aYes: aYes;
		aNo: aNo;
		bYes: bYes;
		bNo: bNo.
	^ x pValue