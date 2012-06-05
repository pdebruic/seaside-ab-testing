as yet unclassified
renderIteration: html
	html div
		style: 'height:300px; margin: auto 0';
		with: [ 
					html
						html:
							(ABTest
								showVariation: self sampleTestName
								a: (WARenderCanvas builder render: [ :h | h image url: 'http://www.seaside.st/styles/logo-plain.png' ])
								b: (WARenderCanvas builder render: [ :h | h image url: 'http://www.seaside.st/styles/esug.gif' ])
								user: self user).
					html break.
					html form
						with: [ 
							html submitButton
								callback: [ 
											ABTest recordConversion: self sampleTestName by: self user.
											html javascript refresh ];
								with: 'I like this one' ] ]