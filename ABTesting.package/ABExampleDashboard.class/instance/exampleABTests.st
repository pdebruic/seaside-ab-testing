accessing
exampleABTests
	| x |
	x := OrderedCollection new.
	x
		add:
			(ABTest new
				testName: 'first';
				a:
						(WARenderCanvas builder
								render: [ :h | 
									h div
										style: 'background-color: #ffffff; width: 50px;height 50px';
										with: 'A first test' ]);
				b:
						(WARenderCanvas builder
								render: [ :h | 
									h div
										style: 'background-color: #BBBBBB; width: 80px; height: 80px';
										with: 'B first test' ]);
				aYes: 100;
				aViews: 150;
				bViews: 147;
				bYes: 25).
	x
		add:
			(ABTest new
				testName: 'second';
				a: (WARenderCanvas builder render: [ :h | h image url: 'http://www.seaside.st/styles/logo-plain.png' ]);
				b: (WARenderCanvas builder render: [ :h | h image url: 'http://www.seaside.st/styles/esug.gif' ]);
				aYes: 24;
				aViews: 150;
				bViews: 147;
				bYes: 25).
	x
		add:
			(ABTest new
				testName: 'third';
				a: 'Some text for the third test. Version A';
				b: 'Some other text for the third test, Version B';
				aYes: 1;
				aViews: 150;
				bViews: 147;
				bYes: 2).
	^ x