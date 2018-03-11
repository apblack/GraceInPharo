generated
definitionComment
"<id>: \w+ ;
<whitespace>:  \s+ ;

%prefix HChecker ;
%suffix Node ;
%root Root ;
%annotate_tokens ;

Hierarchy
	: HierarchyDecl 'decl' +						{{ }}
	;
HierarchyDecl
	: ""%hierarchy"" <id> 'superNode' ""(""<id> 'subNodes' * "")"" "";""		{{ }}
	;"