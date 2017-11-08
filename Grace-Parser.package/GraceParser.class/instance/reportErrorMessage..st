error handling
reportErrorMessage: aString
	GraceSyntaxError new
		messageText: aString;
		tag: self;
		signal