as yet unclassified
renderDescription: html
	html heading
		level1;
		with: 'Sample A/B Test'.
	html
		paragraph:
			'This page fakes an A/B test by randomly showing either the Seaside logo or the ESUG logo. The logos are shown with equal probability.  Upon each reload it records which logo was shown and whether or not the "I like this one" button was clicked.  After you click "I like this one" you will only be shown that logo unless you start a new session.  It also displays the cumulative results of the A/B Test.  It will not declare a "winner" until both options have had at least 10 conversions.'