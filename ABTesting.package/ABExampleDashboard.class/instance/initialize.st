accessing
initialize 

	super initialize.
	testTable:=WATableReport new
					columns: (OrderedCollection new
							add:( (WAReportColumn 
								selector: #testName title:'Test Name')
								sortBlock:[:a :b | a ]);
							add: ((WAReportColumn 
								new title:'Winner')	
									valueBlock: [:each :html | each testResults.
										 each winner ifNotNil:[html html: each winner]]);	
							add:((WAReportColumn new title:'Confidence Level')
								valueBlock:[:e | e showTestResults  ]);				
							add: ((WAReportColumn 
								new title:'A'	)
									valueBlock: [:each :html | html html: each a ]);								
							add: ((WAReportColumn 
								new title:'B'	)
									valueBlock: [:each :html | html html: each b ]);

							add: ((WAReportColumn new
								title:'# of Views')
								valueBlock: [:e | e views];	
								sortBlock:[:a :b | a ]);
							add: ((WAReportColumn 
								selector: #startDate title:'Start Date')	
								sortBlock:[:a :b | a ]);	
							add: ((WAReportColumn 
								new title:'Test Duration')									
								valueBlock:[:each | each testDuration]);			
							add: (WAReportColumn 
								selector: #goal title:'Goal');
							add: (WAReportColumn 
								selector: #description title:'Description');															
								yourself);
					rowColors: #(lightblue lightyellow);
					rowPeriod: 1;
					yourself.