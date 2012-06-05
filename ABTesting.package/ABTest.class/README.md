The user should see the same result each visit or page view until a winner has been declared. 

Set #winner equal to a non nil value to stop the test and use the winning result.  

Once the #confidenceLevel goes above the class var DesiredConfidenceLevel the code will set the winner for the test .

Each test needs to have a unique name.  You should not change the A or B option once the test starts, as that would invalidate your results.  


Other things to add include:
		use cookies rather than users, and switch from cookies to users once someone creates an account.  
		persistent storage of the tests and results. Right now the results are kept in the class ivar #tests in the image.
		weighting the tests so that A shows 90% of the time and B shows 10% or some other proportion.  Right now, it should be an even split
		Have a way to deal with more than two choices, e.g fractional factorial designs http://en.wikipedia.org/wiki/Fractional_factorial_design .
		integrate the concepts from here: http://wiki.github.com/gregdingle/genetify/  


Some resources:
http://en.wikipedia.org/wiki/A/B_Testing
http://elem.com/~btilly/effective-ab-testing/
http://www.slideshare.net/patio11/ab-testing-framework-design-3296257?from=ss_embed
http://www.bingocardcreator.com/abingo/
http://vanity.labnotes.org/ab_testing.html