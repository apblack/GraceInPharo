class initialization
initialize
	ctrlStructureRegEx := RxMatcher forString: '(if\(_\)then\(_\)(elseif\(_\)then\(_\))*(else\(_\))?)|(match\(_\)(case\(_\))+)|(try\(_\)(catch\(_\))*(finally\(_\))?)'